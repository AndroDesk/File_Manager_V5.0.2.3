.class Lcom/xiaomi/onetrack/api/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J

.field public final synthetic c:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;J)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/p;->c:Lcom/xiaomi/onetrack/api/h;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/p;->a:Ljava/lang/String;

    .line 5
    iput-wide p3, p0, Lcom/xiaomi/onetrack/api/p;->b:J

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 1
    const-string v0, "OneTrackImp"

    .line 3
    :try_start_2
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/p;->c:Lcom/xiaomi/onetrack/api/h;

    .line 5
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->isAutoTrackActivityAction()Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_14

    .line 15
    const-string v1, "config.autoTrackActivityAction is false, ignore onetrack_pa pause event"

    .line 17
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void

    .line 21
    :cond_14
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/p;->c:Lcom/xiaomi/onetrack/api/h;

    .line 23
    const-string v2, "onetrack_pa"

    .line 25
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/api/h;->b(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 28
    move-result-object v9

    .line 29
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/p;->a:Ljava/lang/String;

    .line 31
    const-string v4, "onetrack_pa"

    .line 33
    iget-wide v5, p0, Lcom/xiaomi/onetrack/api/p;->b:J

    .line 35
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/p;->c:Lcom/xiaomi/onetrack/api/h;

    .line 37
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    .line 40
    move-result-object v7

    .line 41
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/p;->c:Lcom/xiaomi/onetrack/api/h;

    .line 43
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->c(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    .line 46
    move-result-object v8

    .line 47
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/p;->c:Lcom/xiaomi/onetrack/api/h;

    .line 49
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->d(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/util/v;

    .line 52
    move-result-object v10

    .line 53
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/p;->c:Lcom/xiaomi/onetrack/api/h;

    .line 55
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->e(Lcom/xiaomi/onetrack/api/h;)Z

    .line 58
    move-result v11

    .line 59
    invoke-static/range {v3 .. v11}, Lcom/xiaomi/onetrack/api/c;->a(Ljava/lang/String;Ljava/lang/String;JLcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/aa;->i(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_41} :catch_42

    .line 66
    goto :goto_4c

    .line 67
    :catch_42
    move-exception v1

    .line 68
    const-string v2, "savePageEndData error:"

    .line 70
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    move-result-object v2

    .line 74
    invoke-static {v1, v2, v0}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 77
    :goto_4c
    return-void
.end method
