.class Lcom/xiaomi/onetrack/api/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/Number;

.field public final synthetic c:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;Ljava/lang/Number;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/k;->c:Lcom/xiaomi/onetrack/api/h;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/k;->a:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/xiaomi/onetrack/api/k;->b:Ljava/lang/Number;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    const-string v0, "ot_profile_increment"

    .line 3
    :try_start_2
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/k;->c:Lcom/xiaomi/onetrack/api/h;

    .line 5
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/api/h;->b(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 8
    move-result-object v5

    .line 9
    new-instance v1, Lorg/json/JSONObject;

    .line 11
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 14
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/k;->a:Ljava/lang/String;

    .line 16
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/k;->b:Ljava/lang/Number;

    .line 18
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    move-result-object v2

    .line 22
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/k;->c:Lcom/xiaomi/onetrack/api/h;

    .line 24
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    .line 27
    move-result-object v3

    .line 28
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/k;->c:Lcom/xiaomi/onetrack/api/h;

    .line 30
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->c(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    .line 33
    move-result-object v4

    .line 34
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/k;->c:Lcom/xiaomi/onetrack/api/h;

    .line 36
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->d(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/util/v;

    .line 39
    move-result-object v6

    .line 40
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/k;->c:Lcom/xiaomi/onetrack/api/h;

    .line 42
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->e(Lcom/xiaomi/onetrack/api/h;)Z

    .line 45
    move-result v7

    .line 46
    invoke-static/range {v2 .. v7}, Lcom/xiaomi/onetrack/api/c;->b(Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/k;->c:Lcom/xiaomi/onetrack/api/h;

    .line 52
    invoke-static {v2}, Lcom/xiaomi/onetrack/api/h;->f(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;

    .line 55
    move-result-object v2

    .line 56
    invoke-interface {v2, v0, v1}, Lcom/xiaomi/onetrack/api/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_3b

    .line 59
    goto :goto_47

    .line 60
    :catch_3b
    move-exception v0

    .line 61
    const-string v1, "userProfileIncrement single error:"

    .line 63
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    move-result-object v1

    .line 67
    const-string v2, "OneTrackImp"

    .line 69
    invoke-static {v0, v1, v2}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 72
    :goto_47
    return-void
.end method
