.class Lcom/xiaomi/stat/c/h;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/c/g;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/c/g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/c/h;->a:Lcom/xiaomi/stat/c/g;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/xiaomi/stat/c/h;->a:Lcom/xiaomi/stat/c/g;

    .line 3
    const/4 p2, 0x3

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    return-void
.end method
