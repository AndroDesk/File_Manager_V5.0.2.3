.class public Lcom/xiaomi/onetrack/OneTrackDebugger;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/xiaomi/onetrack/OneTrackDebugger; = null

.field private static b:Ljava/lang/String; = "com.xiaomi.onetrack.otdebugger.FloatWindowService"


# instance fields
.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/xiaomi/onetrack/Configuration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/xiaomi/onetrack/OneTrackDebugger;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    return-void
.end method

.method public static getInstance()Lcom/xiaomi/onetrack/OneTrackDebugger;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/OneTrackDebugger;->a:Lcom/xiaomi/onetrack/OneTrackDebugger;

    .line 3
    if-nez v0, :cond_17

    .line 5
    const-class v0, Lcom/xiaomi/onetrack/OneTrackDebugger;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/xiaomi/onetrack/OneTrackDebugger;->a:Lcom/xiaomi/onetrack/OneTrackDebugger;

    .line 10
    if-nez v1, :cond_12

    .line 12
    new-instance v1, Lcom/xiaomi/onetrack/OneTrackDebugger;

    .line 14
    invoke-direct {v1}, Lcom/xiaomi/onetrack/OneTrackDebugger;-><init>()V

    .line 17
    sput-object v1, Lcom/xiaomi/onetrack/OneTrackDebugger;->a:Lcom/xiaomi/onetrack/OneTrackDebugger;

    .line 19
    :cond_12
    monitor-exit v0

    .line 20
    goto :goto_17

    .line 21
    :catchall_14
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    .line 23
    throw v1

    .line 24
    :cond_17
    :goto_17
    sget-object v0, Lcom/xiaomi/onetrack/OneTrackDebugger;->a:Lcom/xiaomi/onetrack/OneTrackDebugger;

    .line 26
    return-object v0
.end method


# virtual methods
.method public getInstanceId()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/util/o;->a()Lcom/xiaomi/onetrack/util/o;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/xiaomi/onetrack/util/o;->b()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getOaid(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/util/oaid/a;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getSdkConfig()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/xiaomi/onetrack/Configuration;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrackDebugger;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    return-object v0
.end method

.method public setSdkConfig(Lcom/xiaomi/onetrack/Configuration;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrackDebugger;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-void
.end method

.method public startDebugger()V
    .registers 5

    .line 1
    :try_start_0
    sget-object v0, Lcom/xiaomi/onetrack/OneTrackDebugger;->b:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Landroid/content/Intent;

    .line 13
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    .line 16
    move-result-object v3

    .line 17
    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    .line 23
    goto :goto_21

    .line 24
    :catchall_17
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    const-string v1, "startDebugger"

    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_21
    return-void
.end method
