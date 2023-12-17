.class Lcom/xiaomi/onetrack/util/f;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/util/d;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/util/d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/f;->a:Lcom/xiaomi/onetrack/util/d;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 1
    :try_start_0
    const-string p1, "host"

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    const-string v0, "packagename"

    .line 9
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "projectId"

    .line 15
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    const-string v2, "user"

    .line 21
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    const-string v3, "logon"

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 31
    move-result v3

    .line 32
    const-string v5, "quickuploadon"

    .line 34
    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 37
    move-result p2

    .line 38
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_54

    .line 48
    const-string v5, ""

    .line 50
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_54

    .line 56
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_3e

    .line 62
    goto :goto_54

    .line 63
    :cond_3e
    sput-boolean v3, Lcom/xiaomi/onetrack/util/p;->a:Z

    .line 65
    sput-boolean p2, Lcom/xiaomi/onetrack/util/p;->b:Z

    .line 67
    if-nez p2, :cond_45

    .line 69
    return-void

    .line 70
    :cond_45
    iget-object p2, p0, Lcom/xiaomi/onetrack/util/f;->a:Lcom/xiaomi/onetrack/util/d;

    .line 72
    invoke-static {p2, p1}, Lcom/xiaomi/onetrack/util/d;->b(Lcom/xiaomi/onetrack/util/d;Ljava/lang/String;)Z

    .line 75
    move-result p2

    .line 76
    if-nez p2, :cond_4e

    .line 78
    return-void

    .line 79
    :cond_4e
    iget-object p2, p0, Lcom/xiaomi/onetrack/util/f;->a:Lcom/xiaomi/onetrack/util/d;

    .line 81
    invoke-static {p2, p1, v1, v2}, Lcom/xiaomi/onetrack/util/d;->a(Lcom/xiaomi/onetrack/util/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_55

    .line 84
    goto :goto_61

    .line 85
    :cond_54
    :goto_54
    return-void

    .line 86
    :catch_55
    move-exception p1

    .line 87
    invoke-static {}, Lcom/xiaomi/onetrack/util/d;->b()Ljava/lang/String;

    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    invoke-static {p2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :goto_61
    return-void
.end method
