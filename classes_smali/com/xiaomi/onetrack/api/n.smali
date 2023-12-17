.class Lcom/xiaomi/onetrack/api/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/n;->a:Lcom/xiaomi/onetrack/api/h;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    const-string v0, "onetrack_dau"

    .line 3
    :try_start_2
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->t()J

    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/ac;->d(J)Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_4b

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    move-result-wide v1

    .line 17
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/aa;->m(J)V

    .line 20
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/n;->a:Lcom/xiaomi/onetrack/api/h;

    .line 22
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/api/h;->b(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/n;->a:Lcom/xiaomi/onetrack/api/h;

    .line 28
    invoke-static {v2}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    .line 31
    move-result-object v2

    .line 32
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/n;->a:Lcom/xiaomi/onetrack/api/h;

    .line 34
    invoke-static {v3}, Lcom/xiaomi/onetrack/api/h;->c(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    .line 37
    move-result-object v3

    .line 38
    iget-object v4, p0, Lcom/xiaomi/onetrack/api/n;->a:Lcom/xiaomi/onetrack/api/h;

    .line 40
    invoke-static {v4}, Lcom/xiaomi/onetrack/api/h;->d(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/util/v;

    .line 43
    move-result-object v4

    .line 44
    iget-object v5, p0, Lcom/xiaomi/onetrack/api/n;->a:Lcom/xiaomi/onetrack/api/h;

    .line 46
    invoke-static {v5}, Lcom/xiaomi/onetrack/api/h;->e(Lcom/xiaomi/onetrack/api/h;)Z

    .line 49
    move-result v5

    .line 50
    invoke-static {v2, v3, v1, v4, v5}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/n;->a:Lcom/xiaomi/onetrack/api/h;

    .line 56
    invoke-static {v2}, Lcom/xiaomi/onetrack/api/h;->f(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;

    .line 59
    move-result-object v2

    .line 60
    invoke-interface {v2, v0, v1}, Lcom/xiaomi/onetrack/api/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3e} :catch_3f

    .line 63
    goto :goto_4b

    .line 64
    :catch_3f
    move-exception v0

    .line 65
    const-string v1, "trackDau error  e:"

    .line 67
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    move-result-object v1

    .line 71
    const-string v2, "OneTrackImp"

    .line 73
    invoke-static {v0, v1, v2}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 76
    :cond_4b
    :goto_4b
    return-void
.end method
