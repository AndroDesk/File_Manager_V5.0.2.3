.class Lcom/xiaomi/onetrack/api/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/h;Ljava/util/Map;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/j;->b:Lcom/xiaomi/onetrack/api/h;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/j;->a:Ljava/util/Map;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    const-string v0, "ot_profile_increment"

    .line 3
    :try_start_2
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/j;->b:Lcom/xiaomi/onetrack/api/h;

    .line 5
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/api/h;->b(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 8
    move-result-object v5

    .line 9
    new-instance v2, Lorg/json/JSONObject;

    .line 11
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/j;->a:Ljava/util/Map;

    .line 13
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 16
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/j;->b:Lcom/xiaomi/onetrack/api/h;

    .line 18
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    .line 21
    move-result-object v3

    .line 22
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/j;->b:Lcom/xiaomi/onetrack/api/h;

    .line 24
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->c(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    .line 27
    move-result-object v4

    .line 28
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/j;->b:Lcom/xiaomi/onetrack/api/h;

    .line 30
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->d(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/util/v;

    .line 33
    move-result-object v6

    .line 34
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/j;->b:Lcom/xiaomi/onetrack/api/h;

    .line 36
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->e(Lcom/xiaomi/onetrack/api/h;)Z

    .line 39
    move-result v7

    .line 40
    invoke-static/range {v2 .. v7}, Lcom/xiaomi/onetrack/api/c;->b(Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/j;->b:Lcom/xiaomi/onetrack/api/h;

    .line 46
    invoke-static {v2}, Lcom/xiaomi/onetrack/api/h;->f(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;

    .line 49
    move-result-object v2

    .line 50
    invoke-interface {v2, v0, v1}, Lcom/xiaomi/onetrack/api/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_34} :catch_35

    .line 53
    goto :goto_41

    .line 54
    :catch_35
    move-exception v0

    .line 55
    const-string v1, "userProfileIncrement map error:"

    .line 57
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    move-result-object v1

    .line 61
    const-string v2, "OneTrackImp"

    .line 63
    invoke-static {v0, v1, v2}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 66
    :goto_41
    return-void
.end method
