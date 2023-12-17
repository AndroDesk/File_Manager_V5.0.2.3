.class Lcom/xiaomi/onetrack/api/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;Z)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/o;->c:Lcom/xiaomi/onetrack/api/h;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/o;->a:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lcom/xiaomi/onetrack/api/o;->b:Z

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 1
    const-string v0, "onetrack_pa"

    .line 3
    const-string v1, "OneTrackImp"

    .line 5
    :try_start_4
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/o;->c:Lcom/xiaomi/onetrack/api/h;

    .line 7
    invoke-static {v2}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/xiaomi/onetrack/Configuration;->isAutoTrackActivityAction()Z

    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_16

    .line 17
    const-string v0, "config.autoTrackActivityAction is false, ignore onetrack_pa resume event"

    .line 19
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void

    .line 23
    :cond_16
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/o;->c:Lcom/xiaomi/onetrack/api/h;

    .line 25
    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/api/h;->b(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 28
    move-result-object v7

    .line 29
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/o;->a:Ljava/lang/String;

    .line 31
    const-string v4, "onetrack_pa"

    .line 33
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/o;->c:Lcom/xiaomi/onetrack/api/h;

    .line 35
    invoke-static {v2}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    .line 38
    move-result-object v5

    .line 39
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/o;->c:Lcom/xiaomi/onetrack/api/h;

    .line 41
    invoke-static {v2}, Lcom/xiaomi/onetrack/api/h;->c(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    .line 44
    move-result-object v6

    .line 45
    iget-boolean v8, p0, Lcom/xiaomi/onetrack/api/o;->b:Z

    .line 47
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/o;->c:Lcom/xiaomi/onetrack/api/h;

    .line 49
    invoke-static {v2}, Lcom/xiaomi/onetrack/api/h;->d(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/util/v;

    .line 52
    move-result-object v9

    .line 53
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/o;->c:Lcom/xiaomi/onetrack/api/h;

    .line 55
    invoke-static {v2}, Lcom/xiaomi/onetrack/api/h;->e(Lcom/xiaomi/onetrack/api/h;)Z

    .line 58
    move-result v10

    .line 59
    invoke-static/range {v3 .. v10}, Lcom/xiaomi/onetrack/api/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;ZLcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 63
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/o;->c:Lcom/xiaomi/onetrack/api/h;

    .line 65
    invoke-static {v3}, Lcom/xiaomi/onetrack/api/h;->f(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;

    .line 68
    move-result-object v3

    .line 69
    invoke-interface {v3, v0, v2}, Lcom/xiaomi/onetrack/api/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    .line 74
    if-eqz v0, :cond_5b

    .line 76
    const-string v0, "trackPageStartAuto"

    .line 78
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_50} :catch_51

    .line 81
    goto :goto_5b

    .line 82
    :catch_51
    move-exception v0

    .line 83
    const-string v2, "auto trackPageStartAuto error: "

    .line 85
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    move-result-object v2

    .line 89
    invoke-static {v0, v2, v1}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 92
    :cond_5b
    :goto_5b
    return-void
.end method
