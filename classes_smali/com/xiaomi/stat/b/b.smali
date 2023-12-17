.class Lcom/xiaomi/stat/b/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/b/a;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/b/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/b/b;->a:Lcom/xiaomi/stat/b/a;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/xiaomi/stat/b/b;->a:Lcom/xiaomi/stat/b/a;

    .line 3
    invoke-static {p2}, Lcom/xiaomi/stat/b/a;->a(Lcom/xiaomi/stat/b/a;)I

    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p2, v0, :cond_13

    .line 10
    iget-object p2, p0, Lcom/xiaomi/stat/b/b;->a:Lcom/xiaomi/stat/b/a;

    .line 12
    invoke-static {p2}, Lcom/xiaomi/stat/b/a;->b(Lcom/xiaomi/stat/b/a;)Landroid/content/BroadcastReceiver;

    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 19
    return-void

    .line 20
    :cond_13
    invoke-static {}, Lcom/xiaomi/stat/b/e;->a()Ljava/util/concurrent/ExecutorService;

    .line 23
    move-result-object p1

    .line 24
    new-instance p2, Lcom/xiaomi/stat/b/c;

    .line 26
    invoke-direct {p2, p0}, Lcom/xiaomi/stat/b/c;-><init>(Lcom/xiaomi/stat/b/b;)V

    .line 29
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    .line 32
    goto :goto_28

    .line 33
    :catch_20
    move-exception p1

    .line 34
    const-string p2, "ConfigManager"

    .line 36
    const-string v0, "mNetReceiver exception"

    .line 38
    invoke-static {p2, v0, p1}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    :goto_28
    return-void
.end method
