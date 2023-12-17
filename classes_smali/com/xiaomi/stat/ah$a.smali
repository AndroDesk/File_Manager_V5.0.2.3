.class Lcom/xiaomi/stat/ah$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stat/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/ah;

.field private b:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Lcom/xiaomi/stat/ah;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/xiaomi/stat/ah$a;->a:Lcom/xiaomi/stat/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/xiaomi/stat/ah$a;->b:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/stat/ah;Lcom/xiaomi/stat/ai;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/ah$a;-><init>(Lcom/xiaomi/stat/ah;)V

    return-void
.end method

.method private a(Landroid/os/Handler;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/xiaomi/stat/ah$a;->b:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/stat/ah$a;Landroid/os/Handler;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/ah$a;->a(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_6

    .line 6
    goto :goto_46

    .line 7
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    check-cast p1, Ljava/lang/Integer;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result p1

    .line 15
    iget-object v0, p0, Lcom/xiaomi/stat/ah$a;->a:Lcom/xiaomi/stat/ah;

    .line 17
    invoke-static {v0}, Lcom/xiaomi/stat/ah;->a(Lcom/xiaomi/stat/ah;)I

    .line 20
    move-result v0

    .line 21
    if-ge p1, v0, :cond_41

    .line 23
    iget-object v0, p0, Lcom/xiaomi/stat/ah$a;->a:Lcom/xiaomi/stat/ah;

    .line 25
    invoke-static {v0}, Lcom/xiaomi/stat/ah;->b(Lcom/xiaomi/stat/ah;)Ljava/lang/Runnable;

    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 32
    iget-object v0, p0, Lcom/xiaomi/stat/ah$a;->a:Lcom/xiaomi/stat/ah;

    .line 34
    invoke-static {v0}, Lcom/xiaomi/stat/ah;->c(Lcom/xiaomi/stat/ah;)Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_46

    .line 40
    iget-object v0, p0, Lcom/xiaomi/stat/ah$a;->b:Landroid/os/Handler;

    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 45
    move-result-object v0

    .line 46
    add-int/2addr p1, v1

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object p1

    .line 51
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 53
    iget-object p1, p0, Lcom/xiaomi/stat/ah$a;->b:Landroid/os/Handler;

    .line 55
    iget-object v2, p0, Lcom/xiaomi/stat/ah$a;->a:Lcom/xiaomi/stat/ah;

    .line 57
    invoke-static {v2}, Lcom/xiaomi/stat/ah;->d(Lcom/xiaomi/stat/ah;)I

    .line 60
    move-result v2

    .line 61
    int-to-long v2, v2

    .line 62
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 65
    goto :goto_46

    .line 66
    :cond_41
    iget-object p1, p0, Lcom/xiaomi/stat/ah$a;->a:Lcom/xiaomi/stat/ah;

    .line 68
    invoke-virtual {p1}, Lcom/xiaomi/stat/ah;->b()V

    .line 71
    :cond_46
    :goto_46
    return v1
.end method
