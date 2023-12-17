.class public Lcom/xiaomi/onetrack/c/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "DbExecutor"

.field private static b:Ljava/lang/String; = "onetrack_db"

.field private static c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .registers 3

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/c/b;->c:Landroid/os/Handler;

    if-nez v0, :cond_25

    .line 2
    const-class v0, Lcom/xiaomi/onetrack/c/b;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/xiaomi/onetrack/c/b;->c:Landroid/os/Handler;

    if-nez v1, :cond_20

    .line 4
    new-instance v1, Landroid/os/HandlerThread;

    sget-object v2, Lcom/xiaomi/onetrack/c/b;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 6
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/xiaomi/onetrack/c/b;->c:Landroid/os/Handler;

    .line 7
    :cond_20
    monitor-exit v0

    goto :goto_25

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    throw v1

    :cond_25
    :goto_25
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 2

    .line 8
    invoke-static {}, Lcom/xiaomi/onetrack/c/b;->a()V

    .line 9
    sget-object v0, Lcom/xiaomi/onetrack/c/b;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
