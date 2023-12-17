.class Lcom/xiaomi/onetrack/api/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ac;->c:Lcom/xiaomi/onetrack/api/h;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/ac;->a:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/xiaomi/onetrack/api/ac;->b:Ljava/util/Map;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ac;->c:Lcom/xiaomi/onetrack/api/h;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ac;->a:Ljava/lang/String;

    .line 5
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ac;->b:Ljava/util/Map;

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    .line 18
    move-result-object v3

    .line 19
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ac;->c:Lcom/xiaomi/onetrack/api/h;

    .line 21
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ac;->a:Ljava/lang/String;

    .line 23
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/h;->b(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 26
    move-result-object v6

    .line 27
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ac;->a:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ac;->c:Lcom/xiaomi/onetrack/api/h;

    .line 31
    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    .line 34
    move-result-object v4

    .line 35
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ac;->c:Lcom/xiaomi/onetrack/api/h;

    .line 37
    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->c(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    .line 40
    move-result-object v5

    .line 41
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ac;->c:Lcom/xiaomi/onetrack/api/h;

    .line 43
    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->d(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/util/v;

    .line 46
    move-result-object v7

    .line 47
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ac;->c:Lcom/xiaomi/onetrack/api/h;

    .line 49
    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->e(Lcom/xiaomi/onetrack/api/h;)Z

    .line 52
    move-result v8

    .line 53
    invoke-static/range {v2 .. v8}, Lcom/xiaomi/onetrack/api/c;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ac;->c:Lcom/xiaomi/onetrack/api/h;

    .line 59
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->f(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;

    .line 62
    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ac;->a:Ljava/lang/String;

    .line 65
    invoke-interface {v1, v2, v0}, Lcom/xiaomi/onetrack/api/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_44

    .line 68
    goto :goto_50

    .line 69
    :catch_44
    move-exception v0

    .line 70
    const-string v1, "track map error: "

    .line 72
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    move-result-object v1

    .line 76
    const-string v2, "OneTrackImp"

    .line 78
    invoke-static {v0, v1, v2}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 81
    :goto_50
    return-void
.end method
