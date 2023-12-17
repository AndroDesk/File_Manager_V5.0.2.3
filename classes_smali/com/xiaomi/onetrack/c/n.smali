.class Lcom/xiaomi/onetrack/c/n;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/c/m;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/c/m;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/n;->a:Lcom/xiaomi/onetrack/c/m;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1
    new-instance p1, Lcom/xiaomi/onetrack/c/o;

    .line 3
    invoke-direct {p1, p0}, Lcom/xiaomi/onetrack/c/o;-><init>(Lcom/xiaomi/onetrack/c/n;)V

    .line 6
    invoke-static {p1}, Lcom/xiaomi/onetrack/c/a;->a(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method
