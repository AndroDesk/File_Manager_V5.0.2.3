.class Lcom/xiaomi/onetrack/api/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Lcom/xiaomi/onetrack/api/z;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/z;Landroid/content/Intent;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/aa;->b:Lcom/xiaomi/onetrack/api/z;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/aa;->a:Landroid/content/Intent;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/aa;->a:Landroid/content/Intent;

    .line 3
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1d

    .line 22
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_31

    .line 30
    :cond_1d
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/aa;->b:Lcom/xiaomi/onetrack/api/z;

    .line 32
    iget-object v0, v0, Lcom/xiaomi/onetrack/api/z;->a:Lcom/xiaomi/onetrack/api/h;

    .line 34
    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->f(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;

    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/xiaomi/onetrack/c/i;->a(Lcom/xiaomi/onetrack/api/e;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    .line 41
    goto :goto_31

    .line 42
    :catch_29
    move-exception v0

    .line 43
    const-string v1, "OneTrackImp"

    .line 45
    const-string v2, "screenReceiver exception: "

    .line 47
    invoke-static {v1, v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :cond_31
    :goto_31
    return-void
.end method
