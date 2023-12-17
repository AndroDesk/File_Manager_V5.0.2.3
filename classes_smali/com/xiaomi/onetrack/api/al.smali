.class public Lcom/xiaomi/onetrack/api/al;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/onetrack/api/an$b;
.implements Lcom/xiaomi/onetrack/api/e;


# static fields
.field private static final a:Ljava/lang/String; = "OneTrackSystemImp"

.field private static final b:I = 0x19000

.field private static final c:I = 0x2


# instance fields
.field private final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/xiaomi/onetrack/Configuration;

.field private f:Lcom/xiaomi/onetrack/api/an;

.field private g:Lcom/xiaomi/onetrack/util/v;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/v;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/xiaomi/onetrack/api/al;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/al;->e:Lcom/xiaomi/onetrack/Configuration;

    .line 13
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/al;->g:Lcom/xiaomi/onetrack/util/v;

    .line 15
    invoke-static {}, Lcom/xiaomi/onetrack/api/an;->a()Lcom/xiaomi/onetrack/api/an;

    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/al;->f:Lcom/xiaomi/onetrack/api/an;

    .line 21
    invoke-virtual {p1, p0}, Lcom/xiaomi/onetrack/api/an;->a(Lcom/xiaomi/onetrack/api/an$b;)V

    .line 24
    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/api/al;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/al;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 20
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "H"

    .line 21
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 22
    sget-object v1, Lcom/xiaomi/onetrack/f/b$b;->F:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_13

    goto :goto_1a

    :catchall_13
    const-string p1, "OneTrackSystemImp"

    const-string v1, ""

    .line 23
    invoke-static {p1, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    return v0
.end method

.method private b()V
    .registers 8

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/al;->d:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_67

    .line 6
    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/al;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-gtz v1, :cond_d

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_d
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/al;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 11
    invoke-direct {p0, v3}, Lcom/xiaomi/onetrack/api/al;->a(Ljava/lang/String;)Z

    move-result v4

    .line 12
    iget-object v5, p0, Lcom/xiaomi/onetrack/api/al;->f:Lcom/xiaomi/onetrack/api/an;

    iget-object v6, p0, Lcom/xiaomi/onetrack/api/al;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v5, v2, v3, v6, v4}, Lcom/xiaomi/onetrack/api/an;->b(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Z)V

    .line 13
    sget-boolean v4, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v4, :cond_17

    const-string v4, "OneTrackSystemImp"

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "data :"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 15
    :cond_5d
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/al;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 16
    monitor-exit v0

    goto :goto_7e

    :catchall_64
    move-exception v1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_64

    :try_start_66
    throw v1
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_67} :catch_67

    :catch_67
    move-exception v0

    const-string v1, "OneTrackSystemImp"

    const-string v2, "trackCachedEvents: "

    .line 17
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7e
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isDisable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x1

    if-eqz p1, :cond_15

    const-string v2, "onetrack_bug_report"

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    move p1, v0

    goto :goto_16

    :cond_15
    move p1, v1

    :goto_16
    if-nez p1, :cond_2d

    if-eqz p2, :cond_2d

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    const p2, 0x19000

    if-le p1, p2, :cond_2d

    const-string p1, "OneTrackSystemImp"

    const-string p2, "Event size exceed limitation!"

    .line 4
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2d
    return v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 19
    new-instance v0, Lcom/xiaomi/onetrack/api/am;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/am;-><init>(Lcom/xiaomi/onetrack/api/al;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(I)V
    .registers 3

    .line 18
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/al;->f:Lcom/xiaomi/onetrack/api/an;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/an;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 2
    invoke-direct {p0, p2}, Lcom/xiaomi/onetrack/api/al;->a(Ljava/lang/String;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/al;->g:Lcom/xiaomi/onetrack/util/v;

    if-eqz v1, :cond_18

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/util/v;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    if-nez v0, :cond_18

    const-string p1, "OneTrackSystemImp"

    const-string p2, "The privacy policy is not permitted, and the event is not basic or recommend event or custom dau event, skip it."

    .line 4
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_18
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/api/al;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    return-void

    .line 6
    :cond_1f
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->b()Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "onetrack_cta_status"

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 8
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_31
    invoke-static {p0}, Lcom/xiaomi/onetrack/c/i;->a(Lcom/xiaomi/onetrack/api/e;)V

    .line 10
    :cond_34
    sget-boolean v1, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v1, :cond_62

    const-string v1, "OneTrackSystemImp"

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "track name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " data :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " tid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_62
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/al;->d:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 13
    :try_start_65
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/al;->f:Lcom/xiaomi/onetrack/api/an;

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/al;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v2, p1, p2, v3, v0}, Lcom/xiaomi/onetrack/api/an;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Z)Z

    move-result v0

    if-nez v0, :cond_9c

    .line 14
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/al;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-boolean p1, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz p1, :cond_9c

    const-string p1, "OneTrackSystemImp"

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track mIOneTrackService is null!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/al;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_9c
    monitor-exit v1

    return-void

    :catchall_9e
    move-exception p1

    monitor-exit v1
    :try_end_a0
    .catchall {:try_start_65 .. :try_end_a0} :catchall_9e

    throw p1
.end method
