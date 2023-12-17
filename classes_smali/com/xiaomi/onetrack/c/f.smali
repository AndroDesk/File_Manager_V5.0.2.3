.class Lcom/xiaomi/onetrack/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/f/b;

.field public final synthetic b:Lcom/xiaomi/onetrack/c/c;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/c/c;Lcom/xiaomi/onetrack/f/b;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/f;->b:Lcom/xiaomi/onetrack/c/c;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/c/f;->a:Lcom/xiaomi/onetrack/f/b;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    const-string v0, "EventManager"

    .line 3
    :try_start_2
    iget-object v1, p0, Lcom/xiaomi/onetrack/c/f;->b:Lcom/xiaomi/onetrack/c/c;

    .line 5
    iget-object v2, p0, Lcom/xiaomi/onetrack/c/f;->a:Lcom/xiaomi/onetrack/f/b;

    .line 7
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/c/c;->a(Lcom/xiaomi/onetrack/c/c;Lcom/xiaomi/onetrack/f/b;)V

    .line 10
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/xiaomi/onetrack/c/f;->a:Lcom/xiaomi/onetrack/f/b;

    .line 16
    invoke-virtual {v1, v2}, Lcom/xiaomi/onetrack/a/a;->a(Lcom/xiaomi/onetrack/f/b;)V

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const-string v2, "addEvent: "

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v2, p0, Lcom/xiaomi/onetrack/c/f;->a:Lcom/xiaomi/onetrack/f/b;

    .line 31
    invoke-virtual {v2}, Lcom/xiaomi/onetrack/f/b;->e()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v2, "data:"

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v2, p0, Lcom/xiaomi/onetrack/c/f;->a:Lcom/xiaomi/onetrack/f/b;

    .line 45
    invoke-virtual {v2}, Lcom/xiaomi/onetrack/f/b;->g()Lorg/json/JSONObject;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/xiaomi/onetrack/c/f;->a:Lcom/xiaomi/onetrack/f/b;

    .line 65
    invoke-virtual {v1}, Lcom/xiaomi/onetrack/f/b;->f()I

    .line 68
    move-result v1

    .line 69
    invoke-static {}, Lcom/xiaomi/onetrack/c/q;->a()Lcom/xiaomi/onetrack/c/q;

    .line 72
    move-result-object v2

    .line 73
    const/4 v3, 0x0

    .line 74
    invoke-virtual {v2, v1, v3}, Lcom/xiaomi/onetrack/c/q;->a(IZ)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4c} :catch_4d

    .line 77
    goto :goto_53

    .line 78
    :catch_4d
    move-exception v1

    .line 79
    const-string v2, "EventManager.addEvent exception: "

    .line 81
    invoke-static {v0, v2, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    :goto_53
    return-void
.end method
