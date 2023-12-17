.class Lcom/xiaomi/onetrack/a/c/c;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/a/c/b;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/a/c/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/c/c;->a:Lcom/xiaomi/onetrack/a/c/b;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/xiaomi/onetrack/a/c/c;->a:Lcom/xiaomi/onetrack/a/c/b;

    .line 3
    invoke-static {p1}, Lcom/xiaomi/onetrack/a/c/b;->a(Lcom/xiaomi/onetrack/a/c/b;)Lcom/xiaomi/onetrack/a/c/b$a;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_13

    .line 9
    iget-object p1, p0, Lcom/xiaomi/onetrack/a/c/c;->a:Lcom/xiaomi/onetrack/a/c/b;

    .line 11
    invoke-static {p1}, Lcom/xiaomi/onetrack/a/c/b;->a(Lcom/xiaomi/onetrack/a/c/b;)Lcom/xiaomi/onetrack/a/c/b$a;

    .line 14
    move-result-object p1

    .line 15
    const/16 p2, 0xa

    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 20
    :cond_13
    return-void
.end method
