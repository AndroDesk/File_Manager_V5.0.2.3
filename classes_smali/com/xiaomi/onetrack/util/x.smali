.class public Lcom/xiaomi/onetrack/util/x;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/util/x$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "RegionDomainManager"

.field private static final b:Ljava/lang/String; = "CN"

.field private static final c:Ljava/lang/String; = "INTL"

.field private static final d:Ljava/lang/String; = "IN"

.field private static final e:Ljava/lang/String; = "RU"

.field private static final f:Ljava/lang/String; = "http://"

.field private static final g:Ljava/lang/String; = "https://"

.field private static final h:Ljava/lang/String; = "tracking.miui.com"

.field private static final i:Ljava/lang/String; = "tracking.intl.miui.com"

.field private static final j:Ljava/lang/String; = "tracking.rus.miui.com"

.field private static final k:Ljava/lang/String; = "tracking.india.miui.com"

.field private static final l:Ljava/lang/String; = "sdkconfig.ad.xiaomi.com"

.field private static final m:Ljava/lang/String; = "sdkconfig.ad.intl.xiaomi.com"

.field private static final n:Ljava/lang/String; = "sdkconfig.ad.india.xiaomi.com"

.field private static final o:Ljava/lang/String; = "sdkconfig.ad.rus.xiaomi.com"

.field private static final p:Ljava/lang/String; = "/track/v4"

.field private static final q:Ljava/lang/String; = "/track/key_get"

.field private static final r:Ljava/lang/String; = "/api/v4/detail/config"

.field private static final s:Ljava/lang/String; = "/api/v4/detail/config_common"

.field private static u:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private t:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/onetrack/util/x;->u:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/onetrack/util/x;->u:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "IN"

    const-string v2, "tracking.india.miui.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/onetrack/util/x;->u:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "RU"

    const-string v2, "tracking.rus.miui.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->f()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/onetrack/util/y;)V
    .registers 2

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaomi/onetrack/util/x;
    .registers 1

    invoke-static {}, Lcom/xiaomi/onetrack/util/x$a;->a()Lcom/xiaomi/onetrack/util/x;

    move-result-object v0

    return-object v0
.end method

.method private a(ZLjava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_5

    const-string p1, "tracking.miui.com"

    return-object p1

    :cond_5
    sget-object p1, Lcom/xiaomi/onetrack/util/x;->u:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_15

    const-string p1, "tracking.intl.miui.com"

    :cond_15
    return-object p1
.end method

.method private f()V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/onetrack/util/x;->a(Lorg/json/JSONObject;)V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_17
    :goto_17
    return-void
.end method

.method private g()Ljava/lang/String;
    .registers 2

    const-string v0, "https://"

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->h()Z

    move-result v0

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/onetrack/util/x;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->h()Z

    move-result v0

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->i()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_d

    const-string v0, "sdkconfig.ad.xiaomi.com"

    return-object v0

    :cond_d
    const-string v0, "IN"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "sdkconfig.ad.india.xiaomi.com"

    return-object v0

    :cond_18
    const-string v0, "RU"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "sdkconfig.ad.rus.xiaomi.com"

    return-object v0

    :cond_23
    const-string v0, "sdkconfig.ad.intl.xiaomi.com"

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a(Lorg/json/JSONObject;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "RegionDomainManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHostMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_8e

    :try_start_1b
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    sget-object v3, Lcom/xiaomi/onetrack/util/x;->u:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_41
    new-instance p1, Lorg/json/JSONObject;

    sget-object v0, Lcom/xiaomi/onetrack/util/x;->u:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_4f} :catch_50
    .catchall {:try_start_1b .. :try_end_4f} :catchall_8e

    goto :goto_6b

    :catch_50
    move-exception p1

    :try_start_51
    const-string v0, "RegionDomainManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHostMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6b
    const-string p1, "RegionDomainManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "merge config:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/json/JSONObject;

    sget-object v2, Lcom/xiaomi/onetrack/util/x;->u:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8c
    .catchall {:try_start_51 .. :try_end_8c} :catchall_8e

    monitor-exit p0

    return-void

    :catchall_8e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/xiaomi/onetrack/b/e;->b()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_25

    :catch_e
    move-exception v0

    const-string v1, "getTrackingUrl: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegionDomainManager"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    :goto_25
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/track/v4"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/onetrack/util/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/api/v4/detail/config"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/onetrack/util/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/api/v4/detail/config_common"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/onetrack/util/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/track/key_get"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/onetrack/util/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
