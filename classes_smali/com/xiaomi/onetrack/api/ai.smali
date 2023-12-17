.class Lcom/xiaomi/onetrack/api/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;Lcom/xiaomi/onetrack/OneTrack$UserIdType;ZLjava/util/Map;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ai;->e:Lcom/xiaomi/onetrack/api/h;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/ai;->a:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/xiaomi/onetrack/api/ai;->b:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    .line 7
    iput-boolean p4, p0, Lcom/xiaomi/onetrack/api/ai;->c:Z

    .line 9
    iput-object p5, p0, Lcom/xiaomi/onetrack/api/ai;->d:Ljava/util/Map;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1
    const-string v0, "ot_login"

    .line 3
    :try_start_2
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ai;->a:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/aa;->g(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ai;->b:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    .line 10
    invoke-virtual {v1}, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->getUserIdType()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/aa;->h(Ljava/lang/String;)V

    .line 17
    iget-boolean v1, p0, Lcom/xiaomi/onetrack/api/ai;->c:Z

    .line 19
    if-eqz v1, :cond_15

    .line 21
    return-void

    .line 22
    :cond_15
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ai;->d:Ljava/util/Map;

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    .line 28
    move-result-object v3

    .line 29
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ai;->e:Lcom/xiaomi/onetrack/api/h;

    .line 31
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->e(Lcom/xiaomi/onetrack/api/h;)Z

    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_36

    .line 37
    const-string v1, "uid"

    .line 39
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ai;->a:Ljava/lang/String;

    .line 41
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v1, "uid_type"

    .line 46
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ai;->b:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    .line 48
    invoke-virtual {v2}, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->getUserIdType()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    :cond_36
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ai;->e:Lcom/xiaomi/onetrack/api/h;

    .line 57
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/api/h;->b(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 60
    move-result-object v6

    .line 61
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ai;->e:Lcom/xiaomi/onetrack/api/h;

    .line 63
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    .line 66
    move-result-object v4

    .line 67
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ai;->e:Lcom/xiaomi/onetrack/api/h;

    .line 69
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->c(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    .line 72
    move-result-object v5

    .line 73
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ai;->e:Lcom/xiaomi/onetrack/api/h;

    .line 75
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->d(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/util/v;

    .line 78
    move-result-object v7

    .line 79
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ai;->e:Lcom/xiaomi/onetrack/api/h;

    .line 81
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->e(Lcom/xiaomi/onetrack/api/h;)Z

    .line 84
    move-result v8

    .line 85
    invoke-static/range {v3 .. v8}, Lcom/xiaomi/onetrack/api/c;->c(Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ai;->e:Lcom/xiaomi/onetrack/api/h;

    .line 91
    invoke-static {v2}, Lcom/xiaomi/onetrack/api/h;->f(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;

    .line 94
    move-result-object v2

    .line 95
    invoke-interface {v2, v0, v1}, Lcom/xiaomi/onetrack/api/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_61} :catch_62

    .line 98
    goto :goto_6e

    .line 99
    :catch_62
    move-exception v0

    .line 100
    const-string v1, "login error:"

    .line 102
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    move-result-object v1

    .line 106
    const-string v2, "OneTrackImp"

    .line 108
    invoke-static {v0, v1, v2}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 111
    :goto_6e
    return-void
.end method
