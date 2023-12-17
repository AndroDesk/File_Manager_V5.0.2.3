.class public Lcom/xiaomi/stat/b/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x4

.field private static final d:Ljava/lang/String; = "ConfigManager"

.field private static final e:Ljava/lang/String; = "-"

.field private static f:I = 0x0

.field private static g:I = 0x1

.field private static h:I = 0x2

.field private static final i:Ljava/lang/String; = "config_request_count"

.field private static final j:Ljava/lang/String; = "config_request_time"

.field private static final k:Ljava/lang/String; = "config_success_requested"

.field private static final l:I = 0x1

.field private static final m:I = 0x2

.field private static final n:I = 0x0

.field private static final o:I = -0x1

.field private static final p:I = 0x0

.field private static final q:I = 0xc

.field private static final r:Ljava/lang/String; = "t"

.field private static final s:I

.field private static volatile t:Lcom/xiaomi/stat/b/a;


# instance fields
.field private u:I

.field private v:Landroid/content/Context;

.field private w:Ljava/lang/String;

.field private x:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/xiaomi/stat/b/a;->u:I

    .line 7
    new-instance v0, Lcom/xiaomi/stat/b/b;

    .line 9
    invoke-direct {v0, p0}, Lcom/xiaomi/stat/b/b;-><init>(Lcom/xiaomi/stat/b/a;)V

    .line 12
    iput-object v0, p0, Lcom/xiaomi/stat/b/a;->x:Landroid/content/BroadcastReceiver;

    .line 14
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/xiaomi/stat/b/a;->v:Landroid/content/Context;

    .line 20
    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/stat/b/a;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/xiaomi/stat/b/a;->u:I

    return p0
.end method

.method public static a()Lcom/xiaomi/stat/b/a;
    .registers 2

    .line 2
    sget-object v0, Lcom/xiaomi/stat/b/a;->t:Lcom/xiaomi/stat/b/a;

    if-nez v0, :cond_17

    .line 3
    const-class v0, Lcom/xiaomi/stat/b/a;

    monitor-enter v0

    .line 4
    :try_start_7
    sget-object v1, Lcom/xiaomi/stat/b/a;->t:Lcom/xiaomi/stat/b/a;

    if-nez v1, :cond_12

    .line 5
    new-instance v1, Lcom/xiaomi/stat/b/a;

    invoke-direct {v1}, Lcom/xiaomi/stat/b/a;-><init>()V

    sput-object v1, Lcom/xiaomi/stat/b/a;->t:Lcom/xiaomi/stat/b/a;

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
    sget-object v0, Lcom/xiaomi/stat/b/a;->t:Lcom/xiaomi/stat/b/a;

    return-object v0
.end method

.method private a(I)V
    .registers 4

    if-lez p1, :cond_d

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    .line 39
    :try_start_5
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    :cond_d
    :goto_d
    invoke-direct {p0}, Lcom/xiaomi/stat/b/a;->b()Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 9

    const-string v0, "ConfigManager"

    :try_start_2
    const-string v1, "config result:%s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 42
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lcom/xiaomi/stat/b/a;->d()V

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    return-void

    .line 45
    :cond_1b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "errorCode"

    .line 46
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_84

    const-string p1, "time"

    const-wide/16 v5, 0x0

    .line 47
    invoke-virtual {v1, p1, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 48
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object p1

    const-string v3, "config_success_requested"

    invoke-virtual {p1, v3, v5, v6}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;J)V

    const-string p1, "configDelay"

    const-string v3, "0-0"

    .line 49
    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/stat/b;->c(Ljava/lang/String;)V

    const-string p1, "configNetwork"

    const/4 v3, -0x1

    .line 50
    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/xiaomi/stat/b;->c(I)V

    const-string p1, "uploadInterval"

    .line 51
    invoke-virtual {v1, p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Lcom/xiaomi/stat/b;->d(I)V

    const-string p1, "enableSample"

    .line 52
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Lcom/xiaomi/stat/b;->h(Z)V

    .line 53
    invoke-direct {p0, v1}, Lcom/xiaomi/stat/b/a;->a(Lorg/json/JSONObject;)V

    .line 54
    invoke-static {v5, v6}, Lcom/xiaomi/stat/d/r;->a(J)V

    .line 55
    invoke-static {}, Lcom/xiaomi/stat/b/g;->a()Lcom/xiaomi/stat/b/g;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/xiaomi/stat/b/g;->a(Lorg/json/JSONObject;)V

    .line 56
    iget p1, p0, Lcom/xiaomi/stat/b/a;->u:I

    if-ne p1, v2, :cond_7a

    .line 57
    iget-object p1, p0, Lcom/xiaomi/stat/b/a;->v:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/stat/b/a;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_7a
    const/4 p1, 0x2

    .line 58
    iput p1, p0, Lcom/xiaomi/stat/b/a;->u:I
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7d} :catch_7e

    goto :goto_84

    :catch_7e
    move-exception p1

    const-string v1, "processResult exception"

    .line 59
    invoke-static {v0, v1, p1}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_84
    :goto_84
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 6

    :try_start_0
    const-string v0, "uploadSwitch"

    .line 60
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_9

    return-void

    :cond_9
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    .line 61
    :goto_12
    invoke-static {v0}, Lcom/xiaomi/stat/b;->k(Z)V

    and-int/lit8 v0, p1, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1c

    move v0, v2

    goto :goto_1d

    :cond_1c
    move v0, v1

    .line 62
    :goto_1d
    invoke-static {v0}, Lcom/xiaomi/stat/b;->i(Z)V

    const/4 v0, 0x4

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_25

    move v1, v2

    .line 63
    :cond_25
    invoke-static {v1}, Lcom/xiaomi/stat/b;->j(Z)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_40

    :catch_29
    move-exception p1

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConfigManager"

    invoke-static {v0, p1}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_40
    return-void
.end method

.method public static synthetic b(Lcom/xiaomi/stat/b/a;)Landroid/content/BroadcastReceiver;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/stat/b/a;->x:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .registers 6

    const-string v0, "ConfigManager"

    const-string v1, "requestConfigInner"

    .line 2
    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/xiaomi/stat/b/g;->a()Lcom/xiaomi/stat/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/stat/b/g;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/stat/b/a;->w:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/xiaomi/stat/d/k;->b()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "http://test.data.mistat.xiaomi.srv/get_all_config"

    .line 5
    iput-object v1, p0, Lcom/xiaomi/stat/b/a;->w:Ljava/lang/String;

    :cond_1b
    const/4 v1, 0x0

    .line 6
    :try_start_1c
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    const-string v3, "t"

    .line 7
    sget v4, Lcom/xiaomi/stat/b/a;->h:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ai"

    .line 8
    invoke-static {}, Lcom/xiaomi/stat/ak;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "rc"

    .line 9
    invoke-static {}, Lcom/xiaomi/stat/d/m;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "rg"

    .line 10
    invoke-static {}, Lcom/xiaomi/stat/d/m;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "m"

    .line 11
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sv"

    const-string v4, "3.0.16"

    .line 12
    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "av"

    .line 13
    invoke-static {}, Lcom/xiaomi/stat/d/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v3, p0, Lcom/xiaomi/stat/b/a;->w:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/xiaomi/stat/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-direct {p0, v1}, Lcom/xiaomi/stat/b/a;->a(Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_68} :catch_69

    goto :goto_6f

    :catch_69
    move-exception v2

    const-string v3, "requestConfigInner exception "

    .line 16
    invoke-static {v0, v3, v2}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6f
    return-object v1
.end method

.method private c()Z
    .registers 11

    .line 1
    const-string v0, "config_request_time"

    .line 3
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    .line 6
    move-result-wide v1

    .line 7
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x0

    .line 12
    :try_start_b
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    .line 15
    move-result-object v5

    .line 16
    invoke-virtual {v5, v0}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;)Z

    .line 19
    move-result v5
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_3c

    .line 20
    const/4 v6, 0x1

    .line 21
    const-string v7, "config_request_count"

    .line 23
    if-eqz v5, :cond_35

    .line 25
    const-wide/16 v8, 0x0

    .line 27
    :try_start_1a
    invoke-virtual {v3, v0, v8, v9}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;J)J

    .line 30
    move-result-wide v8

    .line 31
    invoke-static {v8, v9}, Lcom/xiaomi/stat/d/r;->b(J)Z

    .line 34
    move-result v5

    .line 35
    if-nez v5, :cond_2b

    .line 37
    invoke-virtual {v3, v0, v1, v2}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;J)V

    .line 40
    invoke-virtual {v3, v7, v4}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;I)V

    .line 43
    goto :goto_44

    .line 44
    :cond_2b
    invoke-virtual {v3, v7, v4}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;I)I

    .line 47
    move-result v0

    .line 48
    const/16 v1, 0xc

    .line 50
    if-lt v0, v1, :cond_44

    .line 52
    move v4, v6

    .line 53
    goto :goto_44

    .line 54
    :cond_35
    invoke-virtual {v3, v0, v1, v2}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;J)V

    .line 57
    invoke-virtual {v3, v7, v6}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;I)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_3b} :catch_3c

    .line 60
    goto :goto_44

    .line 61
    :catch_3c
    move-exception v0

    .line 62
    const-string v1, "ConfigManager"

    .line 64
    const-string v2, "isRequestCountReachMax exception"

    .line 66
    invoke-static {v1, v2, v0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    :cond_44
    :goto_44
    return v4
.end method

.method private d()V
    .registers 4

    .line 1
    const-string v0, "config_request_count"

    .line 3
    :try_start_2
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;I)I

    .line 11
    move-result v2

    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 14
    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_11

    .line 17
    goto :goto_19

    .line 18
    :catch_11
    move-exception v0

    .line 19
    const-string v1, "ConfigManager"

    .line 21
    const-string v2, "addRequestCount exception"

    .line 23
    invoke-static {v1, v2, v0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    :goto_19
    return-void
.end method


# virtual methods
.method public declared-synchronized a(ZZ)V
    .registers 8

    monitor-enter p0

    .line 8
    :try_start_1
    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-static {}, Lcom/xiaomi/stat/b;->b()Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_ba

    .line 9
    :cond_f
    invoke-static {}, Lcom/xiaomi/stat/d/l;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4a

    const-string p1, "ConfigManager"

    const-string p2, "network is not connected!"

    .line 10
    invoke-static {p1, p2}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_c3

    .line 11
    :try_start_1d
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/xiaomi/stat/b/a;->v:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/stat/b/a;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 14
    iput v1, p0, Lcom/xiaomi/stat/b/a;->u:I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_30} :catch_31
    .catchall {:try_start_1d .. :try_end_30} :catchall_c3

    goto :goto_48

    :catch_31
    move-exception p1

    :try_start_32
    const-string p2, "ConfigManager"

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateConfig registerReceiver error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_32 .. :try_end_48} :catchall_c3

    .line 16
    :goto_48
    monitor-exit p0

    return-void

    :cond_4a
    :try_start_4a
    const-string v0, "ConfigManager"

    const-string v2, "updateConfig"

    .line 17
    invoke-static {v0, v2}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_84

    const-string v0, "MI_STAT_TEST"

    const-string v2, "updateConfig-InToday"

    .line 18
    invoke-static {v0, v2}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v2, "config_success_requested"

    const-wide/16 v3, 0x0

    .line 20
    invoke-virtual {v0, v2, v3, v4}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 21
    invoke-static {v2, v3}, Lcom/xiaomi/stat/d/r;->b(J)Z

    move-result v0

    if-eqz v0, :cond_75

    const-string p1, "ConfigManager"

    const-string p2, "Today has successfully requested key."

    .line 22
    invoke-static {p1, p2}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_4a .. :try_end_73} :catchall_c3

    .line 23
    monitor-exit p0

    return-void

    .line 24
    :cond_75
    :try_start_75
    invoke-direct {p0}, Lcom/xiaomi/stat/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_84

    const-string p1, "ConfigManager"

    const-string p2, "config request to max count skip.."

    .line 25
    invoke-static {p1, p2}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_75 .. :try_end_82} :catchall_c3

    .line 26
    monitor-exit p0

    return-void

    :cond_84
    const/4 v0, 0x0

    if-eqz p1, :cond_b5

    if-eqz p2, :cond_8a

    goto :goto_b5

    .line 27
    :cond_8a
    :try_start_8a
    invoke-static {}, Lcom/xiaomi/stat/b;->k()Ljava/lang/String;

    move-result-object p1

    const-string p2, "-"

    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 29
    array-length p2, p1

    if-le p2, v1, :cond_b1

    .line 30
    aget-object p2, p1, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 31
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-le p1, p2, :cond_b1

    .line 32
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sub-int/2addr p1, p2

    .line 33
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int v0, p1, p2

    .line 34
    :cond_b1
    invoke-direct {p0, v0}, Lcom/xiaomi/stat/b/a;->a(I)V

    goto :goto_b8

    .line 35
    :cond_b5
    :goto_b5
    invoke-direct {p0, v0}, Lcom/xiaomi/stat/b/a;->a(I)V
    :try_end_b8
    .catchall {:try_start_8a .. :try_end_b8} :catchall_c3

    .line 36
    :goto_b8
    monitor-exit p0

    return-void

    :cond_ba
    :goto_ba
    :try_start_ba
    const-string p1, "ConfigManager"

    const-string p2, "update abort: statistic or network is not enabled"

    .line 37
    invoke-static {p1, p2}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c1
    .catchall {:try_start_ba .. :try_end_c1} :catchall_c3

    .line 38
    monitor-exit p0

    return-void

    :catchall_c3
    move-exception p1

    monitor-exit p0

    throw p1
.end method
