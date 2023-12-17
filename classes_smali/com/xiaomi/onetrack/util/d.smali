.class public Lcom/xiaomi/onetrack/util/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "d"

.field private static final b:Ljava/lang/String; = "com.xiaomi.onetrack.DEBUG"

.field private static final c:Ljava/lang/String; = "com.xiaomi.onetrack.permissions.DEBUG_MODE"

.field private static final d:Ljava/lang/String; = "/api/open/device/writeBack"

.field private static final e:Ljava/lang/String; = "http://"

.field private static final f:Ljava/lang/String; = "https://"

.field private static final g:Ljava/lang/String; = ".mi.com"

.field private static volatile h:Lcom/xiaomi/onetrack/util/d; = null

.field private static final i:I = 0x64


# instance fields
.field private final j:Landroid/content/Context;

.field private k:Landroid/os/Handler;

.field private l:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/xiaomi/onetrack/util/e;

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, p0, v1}, Lcom/xiaomi/onetrack/util/e;-><init>(Lcom/xiaomi/onetrack/util/d;Landroid/os/Looper;)V

    .line 13
    iput-object v0, p0, Lcom/xiaomi/onetrack/util/d;->k:Landroid/os/Handler;

    .line 15
    new-instance v0, Lcom/xiaomi/onetrack/util/f;

    .line 17
    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/util/f;-><init>(Lcom/xiaomi/onetrack/util/d;)V

    .line 20
    iput-object v0, p0, Lcom/xiaomi/onetrack/util/d;->l:Landroid/content/BroadcastReceiver;

    .line 22
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/xiaomi/onetrack/util/d;->j:Landroid/content/Context;

    .line 28
    invoke-direct {p0, v0}, Lcom/xiaomi/onetrack/util/d;->a(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/util/d;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/d;->j:Landroid/content/Context;

    return-object p0
.end method

.method public static a()Lcom/xiaomi/onetrack/util/d;
    .registers 2

    .line 4
    sget-object v0, Lcom/xiaomi/onetrack/util/d;->h:Lcom/xiaomi/onetrack/util/d;

    if-nez v0, :cond_17

    .line 5
    const-class v0, Lcom/xiaomi/onetrack/util/d;

    monitor-enter v0

    .line 6
    :try_start_7
    sget-object v1, Lcom/xiaomi/onetrack/util/d;->h:Lcom/xiaomi/onetrack/util/d;

    if-nez v1, :cond_12

    .line 7
    new-instance v1, Lcom/xiaomi/onetrack/util/d;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/util/d;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/util/d;->h:Lcom/xiaomi/onetrack/util/d;

    .line 8
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 9
    :cond_17
    :goto_17
    sget-object v0, Lcom/xiaomi/onetrack/util/d;->h:Lcom/xiaomi/onetrack/util/d;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 10
    :cond_3
    :try_start_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.xiaomi.onetrack.DEBUG"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/d;->l:Landroid/content/BroadcastReceiver;

    const-string v2, "com.xiaomi.onetrack.permissions.DEBUG_MODE"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_16

    goto :goto_2d

    :catch_16
    move-exception p1

    .line 13
    sget-object v0, Lcom/xiaomi/onetrack/util/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerDebugModeReceiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2d
    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/util/d;Ljava/lang/String;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/util/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/util/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/onetrack/util/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 16
    new-instance v0, Lcom/xiaomi/onetrack/util/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/onetrack/util/g;-><init>(Lcom/xiaomi/onetrack/util/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 4

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, ".mi.com"

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    return v1
.end method

.method public static synthetic b(Lcom/xiaomi/onetrack/util/d;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/d;->k:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic b()Ljava/lang/String;
    .registers 1

    .line 2
    sget-object v0, Lcom/xiaomi/onetrack/util/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 8

    .line 4
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 5
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "message"

    .line 6
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "result"

    .line 7
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    .line 8
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x64

    .line 10
    iput v4, v3, Landroid/os/Message;->what:I

    .line 11
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2a} :catch_40

    const-string v5, "hint"

    if-nez p1, :cond_34

    if-eqz v0, :cond_34

    .line 12
    :try_start_30
    invoke-virtual {v4, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 13
    :cond_34
    invoke-virtual {v4, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :goto_37
    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 15
    iget-object p1, p0, Lcom/xiaomi/onetrack/util/d;->k:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_3f} :catch_40

    goto :goto_4a

    :catch_40
    move-exception p1

    .line 16
    sget-object v0, Lcom/xiaomi/onetrack/util/d;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4a
    return-void
.end method

.method public static synthetic b(Lcom/xiaomi/onetrack/util/d;Ljava/lang/String;)Z
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/util/d;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/xiaomi/onetrack/util/d;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/util/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/d;->j:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
