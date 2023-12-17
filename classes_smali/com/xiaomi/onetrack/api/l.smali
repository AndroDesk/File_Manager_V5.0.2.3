.class Lcom/xiaomi/onetrack/api/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/h;ZLjava/util/Map;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/h;

    .line 3
    iput-boolean p2, p0, Lcom/xiaomi/onetrack/api/l;->a:Z

    .line 5
    iput-object p3, p0, Lcom/xiaomi/onetrack/api/l;->b:Ljava/util/Map;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1
    const-string v0, "ot_logout"

    .line 3
    :try_start_2
    iget-boolean v1, p0, Lcom/xiaomi/onetrack/api/l;->a:Z

    .line 5
    if-nez v1, :cond_52

    .line 7
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/l;->b:Ljava/util/Map;

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    .line 13
    move-result-object v3

    .line 14
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/h;

    .line 16
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->e(Lcom/xiaomi/onetrack/api/h;)Z

    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_27

    .line 22
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->u()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->w()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    const-string v4, "uid"

    .line 32
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string v1, "uid_type"

    .line 37
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    :cond_27
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/h;

    .line 42
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/api/h;->b(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 45
    move-result-object v6

    .line 46
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/h;

    .line 48
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    .line 51
    move-result-object v4

    .line 52
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/h;

    .line 54
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->c(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    .line 57
    move-result-object v5

    .line 58
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/h;

    .line 60
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->d(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/util/v;

    .line 63
    move-result-object v7

    .line 64
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/h;

    .line 66
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->e(Lcom/xiaomi/onetrack/api/h;)Z

    .line 69
    move-result v8

    .line 70
    invoke-static/range {v3 .. v8}, Lcom/xiaomi/onetrack/api/c;->d(Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/h;

    .line 76
    invoke-static {v2}, Lcom/xiaomi/onetrack/api/h;->f(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;

    .line 79
    move-result-object v2

    .line 80
    invoke-interface {v2, v0, v1}, Lcom/xiaomi/onetrack/api/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_52
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->v()V

    .line 86
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->x()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_58} :catch_59

    .line 89
    goto :goto_65

    .line 90
    :catch_59
    move-exception v0

    .line 91
    const-string v1, "logout error:"

    .line 93
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    move-result-object v1

    .line 97
    const-string v2, "OneTrackImp"

    .line 99
    invoke-static {v0, v1, v2}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 102
    :goto_65
    return-void
.end method
