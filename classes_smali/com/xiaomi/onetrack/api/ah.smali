.class Lcom/xiaomi/onetrack/api/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/h;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ah;->c:Lcom/xiaomi/onetrack/api/h;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/ah;->a:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lcom/xiaomi/onetrack/api/ah;->b:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1
    const-string v0, "ot_profile_set"

    .line 3
    const-string v1, "OneTrackImp"

    .line 5
    :try_start_4
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ah;->a:Ljava/lang/Object;

    .line 7
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/r;->b(Ljava/lang/Object;)Z

    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_12

    .line 13
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ah;->b:Ljava/lang/String;

    .line 15
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void

    .line 19
    :cond_12
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ah;->c:Lcom/xiaomi/onetrack/api/h;

    .line 21
    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/api/h;->b(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 24
    move-result-object v6

    .line 25
    new-instance v2, Lorg/json/JSONObject;

    .line 27
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 30
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/ah;->b:Ljava/lang/String;

    .line 32
    iget-object v4, p0, Lcom/xiaomi/onetrack/api/ah;->a:Ljava/lang/Object;

    .line 34
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    move-result-object v3

    .line 38
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ah;->c:Lcom/xiaomi/onetrack/api/h;

    .line 40
    invoke-static {v2}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    .line 43
    move-result-object v4

    .line 44
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ah;->c:Lcom/xiaomi/onetrack/api/h;

    .line 46
    invoke-static {v2}, Lcom/xiaomi/onetrack/api/h;->c(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    .line 49
    move-result-object v5

    .line 50
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ah;->c:Lcom/xiaomi/onetrack/api/h;

    .line 52
    invoke-static {v2}, Lcom/xiaomi/onetrack/api/h;->d(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/util/v;

    .line 55
    move-result-object v7

    .line 56
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ah;->c:Lcom/xiaomi/onetrack/api/h;

    .line 58
    invoke-static {v2}, Lcom/xiaomi/onetrack/api/h;->e(Lcom/xiaomi/onetrack/api/h;)Z

    .line 61
    move-result v8

    .line 62
    invoke-static/range {v3 .. v8}, Lcom/xiaomi/onetrack/api/c;->a(Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/ah;->c:Lcom/xiaomi/onetrack/api/h;

    .line 68
    invoke-static {v3}, Lcom/xiaomi/onetrack/api/h;->f(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;

    .line 71
    move-result-object v3

    .line 72
    invoke-interface {v3, v0, v2}, Lcom/xiaomi/onetrack/api/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4a} :catch_4b

    .line 75
    goto :goto_55

    .line 76
    :catch_4b
    move-exception v0

    .line 77
    const-string v2, "setUserProfile single error:"

    .line 79
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    move-result-object v2

    .line 83
    invoke-static {v0, v2, v1}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 86
    :goto_55
    return-void
.end method
