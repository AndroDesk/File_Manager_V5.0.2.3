.class Lcom/xiaomi/stat/c/h;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/c/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/stat/c/g;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/stat/c/h;->a:Lcom/xiaomi/stat/c/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    iget-object p1, p0, Lcom/xiaomi/stat/c/h;->a:Lcom/xiaomi/stat/c/g;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method