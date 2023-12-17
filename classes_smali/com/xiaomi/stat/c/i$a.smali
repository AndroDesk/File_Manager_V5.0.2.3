.class Lcom/xiaomi/stat/c/i$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stat/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/c/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/stat/c/i;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/xiaomi/stat/c/i$a;->a:Lcom/xiaomi/stat/c/i;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    iget-object p1, p0, Lcom/xiaomi/stat/c/i$a;->a:Lcom/xiaomi/stat/c/i;

    invoke-static {p1}, Lcom/xiaomi/stat/c/i;->a(Lcom/xiaomi/stat/c/i;)V

    :cond_d
    return-void
.end method
