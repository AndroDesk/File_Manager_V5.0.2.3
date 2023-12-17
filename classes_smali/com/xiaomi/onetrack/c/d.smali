.class final Lcom/xiaomi/onetrack/c/d;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1
    new-instance p1, Lcom/xiaomi/onetrack/c/e;

    .line 3
    invoke-direct {p1, p0, p2}, Lcom/xiaomi/onetrack/c/e;-><init>(Lcom/xiaomi/onetrack/c/d;Landroid/content/Intent;)V

    .line 6
    invoke-static {p1}, Lcom/xiaomi/onetrack/c/a;->a(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method
