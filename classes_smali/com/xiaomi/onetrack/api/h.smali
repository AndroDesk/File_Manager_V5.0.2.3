.class public Lcom/xiaomi/onetrack/api/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "OneTrackImp"

.field private static c:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private b:Lcom/xiaomi/onetrack/api/e;

.field private d:Landroid/content/Context;

.field private e:Lcom/xiaomi/onetrack/api/f;

.field private f:Lcom/xiaomi/onetrack/Configuration;

.field private g:Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;

.field private h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

.field private i:Lcom/xiaomi/onetrack/util/v;

.field private j:Z

.field private k:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/api/h;->j:Z

    .line 7
    new-instance v0, Lcom/xiaomi/onetrack/api/z;

    .line 9
    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/z;-><init>(Lcom/xiaomi/onetrack/api/h;)V

    .line 12
    iput-object v0, p0, Lcom/xiaomi/onetrack/api/h;->k:Landroid/content/BroadcastReceiver;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/h;->d:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/h;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/h;->b(Landroid/content/Context;)V

    .line 25
    const-string p1, "OneTrackImp init : "

    .line 27
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p2}, Lcom/xiaomi/onetrack/Configuration;->toString()Ljava/lang/String;

    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    const-string p2, "OneTrackImp"

    .line 44
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/h;->f:Lcom/xiaomi/onetrack/Configuration;

    return-object p0
.end method

.method private a(JLjava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "last_ver_name"

    .line 26
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "last_ver_code"

    .line 27
    invoke-virtual {v0, p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 28
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;J)V
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/onetrack/api/h;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;Z)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/api/h;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/api/h;Z)V
    .registers 2

    .line 4
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/h;->d(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .registers 6

    .line 17
    sget-object v0, Lcom/xiaomi/onetrack/api/h;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/p;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/onetrack/api/p;-><init>(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 5

    .line 16
    sget-object v0, Lcom/xiaomi/onetrack/api/h;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/o;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/api/o;-><init>(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)Z
    .registers 2

    .line 5
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/h;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/h;->f(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .registers 10

    .line 3
    invoke-static {}, Lcom/xiaomi/onetrack/util/p;->a()V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/h;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isInternational()Z

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/h;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getRegion()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/h;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/util/q;->a(ZLjava/lang/String;Lcom/xiaomi/onetrack/OneTrack$Mode;)V

    .line 5
    sget-object v0, Lcom/xiaomi/onetrack/api/h;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2f

    .line 6
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/xiaomi/onetrack/api/h;->c:Ljava/util/concurrent/ExecutorService;

    .line 7
    :cond_2f
    new-instance v0, Lcom/xiaomi/onetrack/util/v;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/h;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-direct {v0, v1}, Lcom/xiaomi/onetrack/util/v;-><init>(Lcom/xiaomi/onetrack/Configuration;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/h;->i:Lcom/xiaomi/onetrack/util/v;

    .line 8
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/h;->e()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/h;->c()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 9
    invoke-static {}, Lcom/xiaomi/onetrack/util/o;->a()Lcom/xiaomi/onetrack/util/o;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/util/o;->a(Ljava/lang/Boolean;)V

    .line 10
    new-instance v0, Lcom/xiaomi/onetrack/api/al;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/h;->f:Lcom/xiaomi/onetrack/Configuration;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/h;->i:Lcom/xiaomi/onetrack/util/v;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/onetrack/api/al;-><init>(Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/v;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/h;->b:Lcom/xiaomi/onetrack/api/e;

    goto :goto_73

    .line 11
    :cond_5f
    invoke-static {}, Lcom/xiaomi/onetrack/util/o;->a()Lcom/xiaomi/onetrack/util/o;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/util/o;->a(Ljava/lang/Boolean;)V

    .line 12
    new-instance v0, Lcom/xiaomi/onetrack/api/aj;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/h;->f:Lcom/xiaomi/onetrack/Configuration;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/h;->i:Lcom/xiaomi/onetrack/util/v;

    invoke-direct {v0, p1, v1, v2}, Lcom/xiaomi/onetrack/api/aj;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/v;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/h;->b:Lcom/xiaomi/onetrack/api/e;

    .line 13
    :goto_73
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/h;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    if-ne v0, v1, :cond_a4

    .line 14
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/h;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isOverrideMiuiRegionSetting()Z

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/q;->a(Z)V

    .line 15
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/h;->c(Landroid/content/Context;)V

    .line 16
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/h;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isExceptionCatcherEnable()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 17
    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->start(Landroid/content/Context;Lcom/xiaomi/onetrack/api/h;)V

    .line 18
    invoke-static {}, Lcom/xiaomi/onetrack/CrashAnalysis;->isSupport()Z

    move-result v0

    if-nez v0, :cond_a4

    .line 19
    new-instance v0, Lcom/xiaomi/onetrack/api/f;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/api/f;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/h;->e:Lcom/xiaomi/onetrack/api/f;

    .line 20
    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/f;->a()V

    .line 21
    :cond_a4
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/h;->d(Landroid/content/Context;)V

    .line 22
    sget-object p1, Lcom/xiaomi/onetrack/api/h;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/xiaomi/onetrack/api/i;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/i;-><init>(Lcom/xiaomi/onetrack/api/h;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lcom/xiaomi/onetrack/api/h;)V
    .registers 1

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/h;->j()V

    return-void
.end method

.method public static synthetic c(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/h;->h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    return-object p0
.end method

.method private c(Landroid/content/Context;)V
    .registers 3

    .line 5
    check-cast p1, Landroid/app/Application;

    new-instance v0, Lcom/xiaomi/onetrack/api/m;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/m;-><init>(Lcom/xiaomi/onetrack/api/h;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private c()Z
    .registers 3

    .line 3
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/h;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isOverrideMiuiRegionSetting()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_a
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/h;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static synthetic c(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)Z
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/h;->e(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/util/v;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/h;->i:Lcom/xiaomi/onetrack/util/v;

    return-object p0
.end method

.method private d()V
    .registers 3

    .line 2
    sget-object v0, Lcom/xiaomi/onetrack/api/h;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/n;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/api/n;-><init>(Lcom/xiaomi/onetrack/api/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .registers 4

    .line 6
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/h;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_14

    :catch_14
    return-void
.end method

.method private d(Z)V
    .registers 4

    .line 3
    sget-object v0, Lcom/xiaomi/onetrack/api/h;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/q;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/q;-><init>(Lcom/xiaomi/onetrack/api/h;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .registers 6

    .line 4
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_17

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Invalid eventname: %s. Eventname can only consist of numbers, letters, underscores ,and can not start with a number or \"onetrack_\" or \"ot_\""

    .line 5
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "OneTrackImp"

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    xor-int/lit8 p1, v0, 0x1

    return p1
.end method

.method private e()Z
    .registers 3

    .line 2
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_26

    const-string v0, "enable:"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/h;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isSupportEmptyEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/onetrack/api/h;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrackImp"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_26
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/h;->f()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/xiaomi/onetrack/api/h;->g()Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    return v0
.end method

.method public static synthetic e(Lcom/xiaomi/onetrack/api/h;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/onetrack/api/h;->j:Z

    return p0
.end method

.method private e(Ljava/lang/String;)Z
    .registers 6

    const-string v0, "onetrack_dau"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3b

    const-string v0, "view"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "ot_login"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "ot_logout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_3b

    .line 11
    :cond_22
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_38

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string p1, "Invalid eventname: %s. Eventname can only consist of numbers, letters, underscores ,and can not start with a number or \"onetrack_\" or \"ot_\""

    .line 12
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneTrackImp"

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    xor-int/lit8 p1, v0, 0x1

    return p1

    :cond_3b
    :goto_3b
    return v1
.end method

.method public static synthetic f(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/h;->b:Lcom/xiaomi/onetrack/api/e;

    return-object p0
.end method

.method private f(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5

    const/4 v0, 0x0

    .line 14
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/h;->g:Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;

    if-eqz v1, :cond_a

    invoke-interface {v1, p1}, Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;->getDynamicProperty(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    goto :goto_b

    :cond_a
    move-object p1, v0

    :goto_b
    const/4 v1, 0x0

    .line 15
    invoke-static {p1, v1}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 16
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/h;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/r;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 18
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_27

    :cond_26
    move-object v2, v0

    .line 19
    :goto_27
    invoke-static {p1, v2}, Lcom/xiaomi/onetrack/util/r;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_2c

    return-object p1

    :catch_2c
    move-exception p1

    const-string v1, "getCommonProperty: "

    .line 20
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "OneTrackImp"

    .line 21
    invoke-static {p1, v1, v2}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v0
.end method

.method private f()Z
    .registers 4

    .line 2
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.analytics"

    const-string v2, "com.miui.analytics.onetrack.OneTrackService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_1b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    if-nez v0, :cond_27

    :cond_1a
    return v1

    :catch_1b
    move-exception v0

    const-string v1, "enable error:"

    .line 5
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "OneTrackImp"

    .line 6
    invoke-static {v0, v1, v2}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic g(Lcom/xiaomi/onetrack/api/h;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/h;->d()V

    return-void
.end method

.method private static g()Z
    .registers 5

    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.miui.analytics"

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 4
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const v2, 0x7867b6b4

    if-lt v1, v2, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    const-string v2, "OneTrackImp"

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "system analytics version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_33
    return v0
.end method

.method private h()V
    .registers 3

    .line 2
    sget-object v0, Lcom/xiaomi/onetrack/api/h;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/x;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/api/x;-><init>(Lcom/xiaomi/onetrack/api/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic h(Lcom/xiaomi/onetrack/api/h;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/h;->i()V

    return-void
.end method

.method private i()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->d()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_10

    .line 7
    sget-object v0, Lcom/xiaomi/onetrack/api/h;->c:Ljava/util/concurrent/ExecutorService;

    .line 9
    new-instance v1, Lcom/xiaomi/onetrack/api/y;

    .line 11
    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/api/y;-><init>(Lcom/xiaomi/onetrack/api/h;)V

    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 17
    :cond_10
    return-void
.end method

.method private j()V
    .registers 14

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/h;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 9
    if-eq v0, v1, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->d()I

    .line 15
    move-result v0

    .line 16
    int-to-long v4, v0

    .line 17
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->c()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p0, v4, v5, v0}, Lcom/xiaomi/onetrack/api/h;->a(JLjava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->A()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_26

    .line 35
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->j(Ljava/lang/String;)V

    .line 38
    return-void

    .line 39
    :cond_26
    new-instance v2, Lorg/json/JSONObject;

    .line 41
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    const-string v1, "last_ver_code"

    .line 46
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 49
    move-result-wide v6

    .line 50
    const-string v1, "last_ver_name"

    .line 52
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 56
    cmp-long v1, v6, v4

    .line 58
    if-eqz v1, :cond_68

    .line 60
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->j(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->f()J

    .line 66
    move-result-wide v8

    .line 67
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/h;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 69
    iget-object v10, p0, Lcom/xiaomi/onetrack/api/h;->h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    .line 71
    iget-object v11, p0, Lcom/xiaomi/onetrack/api/h;->i:Lcom/xiaomi/onetrack/util/v;

    .line 73
    iget-boolean v12, p0, Lcom/xiaomi/onetrack/api/h;->j:Z

    .line 75
    move-wide v1, v6

    .line 76
    move-wide v6, v8

    .line 77
    move-object v8, v0

    .line 78
    move-object v9, v10

    .line 79
    move-object v10, v11

    .line 80
    move v11, v12

    .line 81
    invoke-static/range {v1 .. v11}, Lcom/xiaomi/onetrack/api/c;->a(JLjava/lang/String;JJLcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/h;->b:Lcom/xiaomi/onetrack/api/e;

    .line 87
    const-string v2, "onetrack_upgrade"

    .line 89
    invoke-interface {v1, v2, v0}, Lcom/xiaomi/onetrack/api/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5b} :catch_5c

    .line 92
    goto :goto_68

    .line 93
    :catch_5c
    move-exception v0

    .line 94
    const-string v1, "trackUpgradeEvent error: "

    .line 96
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    move-result-object v1

    .line 100
    const-string v2, "OneTrackImp"

    .line 102
    invoke-static {v0, v1, v2}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 105
    :cond_68
    :goto_68
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 20
    invoke-static {}, Lcom/xiaomi/onetrack/util/w;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 21
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/DeviceUtil;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 22
    :cond_b
    new-instance p1, Lcom/xiaomi/onetrack/OnMainThreadException;

    const-string v0, "Can\'t call this method on main thread"

    invoke-direct {p1, v0}, Lcom/xiaomi/onetrack/OnMainThreadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .registers 3

    .line 18
    sget-object v0, Lcom/xiaomi/onetrack/api/h;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/s;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/api/s;-><init>(Lcom/xiaomi/onetrack/api/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/h;->g:Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;

    return-void
.end method

.method public a(Lcom/xiaomi/onetrack/OneTrack$IEventHook;)V
    .registers 3

    .line 29
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/h;->h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    .line 30
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/h;->i:Lcom/xiaomi/onetrack/util/v;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/util/v;->a(Lcom/xiaomi/onetrack/OneTrack$IEventHook;)V

    return-void
.end method

.method public a(Lcom/xiaomi/onetrack/ServiceQualityEvent;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 23
    :cond_3
    sget-object v0, Lcom/xiaomi/onetrack/api/h;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/w;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/w;-><init>(Lcom/xiaomi/onetrack/api/h;Lcom/xiaomi/onetrack/ServiceQualityEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .line 9
    sget-object v0, Lcom/xiaomi/onetrack/api/h;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/ae;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/ae;-><init>(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/xiaomi/onetrack/OneTrack$UserIdType;Ljava/util/Map;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/onetrack/OneTrack$UserIdType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/xiaomi/onetrack/api/h;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/xiaomi/onetrack/api/ai;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/onetrack/api/ai;-><init>(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;Lcom/xiaomi/onetrack/OneTrack$UserIdType;ZLjava/util/Map;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Number;)V
    .registers 5

    .line 14
    sget-object v0, Lcom/xiaomi/onetrack/api/h;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/k;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/api/k;-><init>(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;Ljava/lang/Number;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 12
    sget-object v0, Lcom/xiaomi/onetrack/api/h;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/ah;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/onetrack/api/ah;-><init>(Lcom/xiaomi/onetrack/api/h;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 19

    .line 10
    sget-object v0, Lcom/xiaomi/onetrack/api/h;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lcom/xiaomi/onetrack/api/af;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p5

    move-object v7, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/xiaomi/onetrack/api/af;-><init>(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/xiaomi/onetrack/api/h;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/t;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/xiaomi/onetrack/api/t;-><init>(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/xiaomi/onetrack/api/h;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/ac;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/api/ac;-><init>(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/xiaomi/onetrack/api/h;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/ad;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/onetrack/api/ad;-><init>(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/xiaomi/onetrack/api/h;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/ag;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/ag;-><init>(Lcom/xiaomi/onetrack/api/h;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/Map;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 15
    sget-object v0, Lcom/xiaomi/onetrack/api/h;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/l;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/onetrack/api/l;-><init>(Lcom/xiaomi/onetrack/api/h;ZLjava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 24
    sput-boolean p1, Lcom/xiaomi/onetrack/util/p;->a:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 3

    .line 25
    invoke-static {}, Lcom/xiaomi/onetrack/util/w;->a()Z

    move-result v0

    if-nez v0, :cond_f

    .line 26
    invoke-static {}, Lcom/xiaomi/onetrack/util/o;->a()Lcom/xiaomi/onetrack/util/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/util/o;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 27
    :cond_f
    new-instance v0, Lcom/xiaomi/onetrack/OnMainThreadException;

    const-string v1, "Can\'t call this method on main thread"

    invoke-direct {v0, v1}, Lcom/xiaomi/onetrack/OnMainThreadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .line 24
    sget-object v0, Lcom/xiaomi/onetrack/api/h;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/u;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/u;-><init>(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 23
    sget-object v0, Lcom/xiaomi/onetrack/api/h;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/j;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/j;-><init>(Lcom/xiaomi/onetrack/api/h;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Z)V
    .registers 4

    .line 28
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/h;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isUseCustomPrivacyPolicy()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 29
    :cond_9
    sget-object v0, Lcom/xiaomi/onetrack/api/h;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/ab;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/ab;-><init>(Lcom/xiaomi/onetrack/api/h;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    .line 7
    sget-object v0, Lcom/xiaomi/onetrack/api/h;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/v;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/v;-><init>(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 6
    :cond_3
    sget-object v0, Lcom/xiaomi/onetrack/api/h;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/r;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/r;-><init>(Lcom/xiaomi/onetrack/api/h;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Z)V
    .registers 2

    .line 8
    iput-boolean p1, p0, Lcom/xiaomi/onetrack/api/h;->j:Z

    return-void
.end method
