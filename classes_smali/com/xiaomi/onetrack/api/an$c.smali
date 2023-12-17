.class Lcom/xiaomi/onetrack/api/an$c;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/api/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/api/an;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/an;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/an$c;->a:Lcom/xiaomi/onetrack/api/an;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_e

    .line 9
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/an$c;->a:Lcom/xiaomi/onetrack/api/an;

    .line 11
    invoke-static {p1}, Lcom/xiaomi/onetrack/api/an;->f(Lcom/xiaomi/onetrack/api/an;)V

    .line 14
    goto :goto_16

    .line 15
    :cond_e
    const/4 v0, 0x2

    .line 16
    if-ne p1, v0, :cond_16

    .line 18
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/an$c;->a:Lcom/xiaomi/onetrack/api/an;

    .line 20
    invoke-static {p1}, Lcom/xiaomi/onetrack/api/an;->g(Lcom/xiaomi/onetrack/api/an;)V

    .line 23
    :cond_16
    :goto_16
    return-void
.end method
