.class Lcom/xiaomi/stat/b/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/b/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/stat/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/stat/b/b;->a:Lcom/xiaomi/stat/b/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    :try_start_0
    iget-object p2, p0, Lcom/xiaomi/stat/b/b;->a:Lcom/xiaomi/stat/b/a;

    invoke-static {p2}, Lcom/xiaomi/stat/b/a;->a(Lcom/xiaomi/stat/b/a;)I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_13

    iget-object p2, p0, Lcom/xiaomi/stat/b/b;->a:Lcom/xiaomi/stat/b/a;

    invoke-static {p2}, Lcom/xiaomi/stat/b/a;->b(Lcom/xiaomi/stat/b/a;)Landroid/content/BroadcastReceiver;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_13
    invoke-static {}, Lcom/xiaomi/stat/b/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/xiaomi/stat/b/c;

    invoke-direct {p2, p0}, Lcom/xiaomi/stat/b/c;-><init>(Lcom/xiaomi/stat/b/b;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_28

    :catch_20
    move-exception p1

    const-string p2, "ConfigManager"

    const-string v0, "mNetReceiver exception"

    invoke-static {p2, v0, p1}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_28
    return-void
.end method
