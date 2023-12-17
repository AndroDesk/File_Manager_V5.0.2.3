.class Lcom/xiaomi/onetrack/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Lcom/xiaomi/onetrack/c/d;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/c/d;Landroid/content/Intent;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/e;->b:Lcom/xiaomi/onetrack/c/d;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/c/e;->a:Landroid/content/Intent;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/e;->a:Landroid/content/Intent;

    .line 3
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 13
    const-string v2, "android.intent.action.SCREEN_ON"

    .line 15
    if-nez v1, :cond_16

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_35

    .line 23
    :cond_16
    const-string v1, "EventManager"

    .line 25
    const-string v3, "screen on/off"

    .line 27
    invoke-static {v1, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x0

    .line 35
    if-eqz v0, :cond_26

    .line 37
    move v0, v1

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    const/4 v0, 0x2

    .line 40
    :goto_27
    invoke-static {}, Lcom/xiaomi/onetrack/c/q;->a()Lcom/xiaomi/onetrack/c/q;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/onetrack/c/q;->a(IZ)V

    .line 47
    invoke-static {}, Lcom/xiaomi/onetrack/a/c/b;->a()Lcom/xiaomi/onetrack/a/c/b;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/xiaomi/onetrack/a/c/b;->b()V

    .line 54
    :cond_35
    return-void
.end method
