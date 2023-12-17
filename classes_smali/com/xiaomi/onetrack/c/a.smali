.class public Lcom/xiaomi/onetrack/c/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "BroadcastExecutor"

.field private static b:Ljava/lang/String; = "onetrack_broadcast"

.field private static c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 5

    .line 8
    sget-object v0, Lcom/xiaomi/onetrack/c/a;->c:Landroid/os/Handler;

    if-nez v0, :cond_43

    .line 9
    const-class v0, Lcom/xiaomi/onetrack/c/a;

    monitor-enter v0

    .line 10
    :try_start_7
    sget-object v1, Lcom/xiaomi/onetrack/c/a;->c:Landroid/os/Handler;

    if-nez v1, :cond_3e

    const-string v1, "BroadcastExecutor"

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initIfNeeded : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance v1, Landroid/os/HandlerThread;

    sget-object v2, Lcom/xiaomi/onetrack/c/a;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 14
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/xiaomi/onetrack/c/a;->c:Landroid/os/Handler;

    .line 15
    :cond_3e
    monitor-exit v0

    goto :goto_43

    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_40

    throw v1

    :cond_43
    :goto_43
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 4

    const-string v0, "BroadcastExecutor : "

    .line 1
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastExecutor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/xiaomi/onetrack/c/a;->a()V

    .line 4
    sget-object v0, Lcom/xiaomi/onetrack/c/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
