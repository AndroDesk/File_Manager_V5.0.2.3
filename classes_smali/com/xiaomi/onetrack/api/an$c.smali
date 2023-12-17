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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/onetrack/api/an;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/an$c;->a:Lcom/xiaomi/onetrack/api/an;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    iget-object p1, p0, Lcom/xiaomi/onetrack/api/an$c;->a:Lcom/xiaomi/onetrack/api/an;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/an;->f(Lcom/xiaomi/onetrack/api/an;)V

    goto :goto_16

    :cond_e
    const/4 v0, 0x2

    if-ne p1, v0, :cond_16

    iget-object p1, p0, Lcom/xiaomi/onetrack/api/an$c;->a:Lcom/xiaomi/onetrack/api/an;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/an;->g(Lcom/xiaomi/onetrack/api/an;)V

    :cond_16
    :goto_16
    return-void
.end method
