.class final Lcom/xiaomi/onetrack/c/d;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    new-instance p1, Lcom/xiaomi/onetrack/c/e;

    invoke-direct {p1, p0, p2}, Lcom/xiaomi/onetrack/c/e;-><init>(Lcom/xiaomi/onetrack/c/d;Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/xiaomi/onetrack/c/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
