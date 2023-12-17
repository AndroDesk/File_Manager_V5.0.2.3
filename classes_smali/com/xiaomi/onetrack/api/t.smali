.class Lcom/xiaomi/onetrack/api/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/t;->d:Lcom/xiaomi/onetrack/api/h;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/t;->a:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/xiaomi/onetrack/api/t;->b:Ljava/util/Map;

    .line 7
    iput-object p4, p0, Lcom/xiaomi/onetrack/api/t;->c:Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/t;->d:Lcom/xiaomi/onetrack/api/h;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/t;->a:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/t;->b:Ljava/util/Map;

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    .line 18
    move-result-object v4

    .line 19
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/t;->d:Lcom/xiaomi/onetrack/api/h;

    .line 21
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/t;->a:Ljava/lang/String;

    .line 23
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/h;->b(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 26
    move-result-object v7

    .line 27
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/t;->c:Ljava/lang/String;

    .line 29
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/t;->a:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/t;->d:Lcom/xiaomi/onetrack/api/h;

    .line 33
    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    .line 36
    move-result-object v5

    .line 37
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/t;->d:Lcom/xiaomi/onetrack/api/h;

    .line 39
    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->c(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    .line 42
    move-result-object v6

    .line 43
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/t;->d:Lcom/xiaomi/onetrack/api/h;

    .line 45
    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->d(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/util/v;

    .line 48
    move-result-object v8

    .line 49
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/t;->d:Lcom/xiaomi/onetrack/api/h;

    .line 51
    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->e(Lcom/xiaomi/onetrack/api/h;)Z

    .line 54
    move-result v9

    .line 55
    invoke-static/range {v2 .. v9}, Lcom/xiaomi/onetrack/api/c;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/t;->d:Lcom/xiaomi/onetrack/api/h;

    .line 61
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->f(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;

    .line 64
    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/t;->a:Ljava/lang/String;

    .line 67
    invoke-interface {v1, v2, v0}, Lcom/xiaomi/onetrack/api/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_46

    .line 70
    goto :goto_52

    .line 71
    :catch_46
    move-exception v0

    .line 72
    const-string v1, "track json error:"

    .line 74
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    move-result-object v1

    .line 78
    const-string v2, "OneTrackImp"

    .line 80
    invoke-static {v0, v1, v2}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 83
    :goto_52
    return-void
.end method
