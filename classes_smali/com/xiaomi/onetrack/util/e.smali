.class Lcom/xiaomi/onetrack/util/e;
.super Landroid/os/Handler;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/util/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/onetrack/util/d;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/xiaomi/onetrack/util/e;->a:Lcom/xiaomi/onetrack/util/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_7

    goto :goto_16

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/e;->a:Lcom/xiaomi/onetrack/util/d;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "hint"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/d;->a(Lcom/xiaomi/onetrack/util/d;Ljava/lang/String;)V

    :goto_16
    return-void
.end method
