.class final Lcom/xiaomi/stat/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:[Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/c/d;->a:[Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/stat/c/d;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/xiaomi/stat/c/d;->c:Ljava/util/Map;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 3

    .line 1
    const-class p1, Lcom/xiaomi/stat/c/i;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_9
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    .line 7
    goto :goto_9

    .line 8
    :catchall_7
    move-exception v0

    .line 9
    goto :goto_b

    .line 10
    :catch_9
    :goto_9
    :try_start_9
    monitor-exit p1

    .line 11
    return-void

    .line 12
    :goto_b
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_7

    .line 13
    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/b/e;->a()Ljava/util/concurrent/ExecutorService;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/xiaomi/stat/c/e;

    .line 7
    invoke-direct {v0, p0, p2}, Lcom/xiaomi/stat/c/e;-><init>(Lcom/xiaomi/stat/c/d;Landroid/os/IBinder;)V

    .line 10
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6

    .line 1
    const-class v0, Lcom/xiaomi/stat/c/i;

    .line 3
    const-string v1, "UploadMode"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v3, "onServiceDisconnected "

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-static {v1, p1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    monitor-enter v0

    .line 26
    :try_start_19
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1f
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    .line 29
    goto :goto_1f

    .line 30
    :catchall_1d
    move-exception p1

    .line 31
    goto :goto_21

    .line 32
    :catch_1f
    :goto_1f
    :try_start_1f
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_1d

    .line 35
    throw p1
.end method
