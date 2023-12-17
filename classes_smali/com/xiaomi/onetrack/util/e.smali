.class Lcom/xiaomi/onetrack/util/e;
.super Landroid/os/Handler;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/util/d;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/util/d;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/e;->a:Lcom/xiaomi/onetrack/util/d;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/16 v1, 0x64

    .line 5
    if-eq v0, v1, :cond_7

    .line 7
    goto :goto_16

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/e;->a:Lcom/xiaomi/onetrack/util/d;

    .line 10
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 13
    move-result-object p1

    .line 14
    const-string v1, "hint"

    .line 16
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/d;->a(Lcom/xiaomi/onetrack/util/d;Ljava/lang/String;)V

    .line 23
    :goto_16
    return-void
.end method
