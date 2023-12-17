.class Lcom/xiaomi/onetrack/api/z;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/z;->a:Lcom/xiaomi/onetrack/api/h;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1
    :try_start_0
    new-instance p1, Lcom/xiaomi/onetrack/api/aa;

    .line 3
    invoke-direct {p1, p0, p2}, Lcom/xiaomi/onetrack/api/aa;-><init>(Lcom/xiaomi/onetrack/api/z;Landroid/content/Intent;)V

    .line 6
    invoke-static {p1}, Lcom/xiaomi/onetrack/c/a;->a(Ljava/lang/Runnable;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_8

    .line 9
    :catchall_8
    return-void
.end method
