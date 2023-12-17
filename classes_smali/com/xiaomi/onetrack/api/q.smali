.class Lcom/xiaomi/onetrack/api/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/h;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/q;->b:Lcom/xiaomi/onetrack/api/h;

    .line 3
    iput-boolean p2, p0, Lcom/xiaomi/onetrack/api/q;->a:Z

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    const-string v0, "B"

    .line 3
    const-string v1, "OneTrackImp"

    .line 5
    :try_start_4
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->z()Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_4b

    .line 15
    new-instance v3, Lorg/json/JSONObject;

    .line 17
    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 23
    move-result-object v2

    .line 24
    const-string v4, "app_end"

    .line 26
    iget-boolean v5, p0, Lcom/xiaomi/onetrack/api/q;->a:Z

    .line 28
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 31
    move-result-object v2

    .line 32
    iget-object v4, p0, Lcom/xiaomi/onetrack/api/q;->b:Lcom/xiaomi/onetrack/api/h;

    .line 34
    invoke-static {v4}, Lcom/xiaomi/onetrack/api/h;->f(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;

    .line 37
    move-result-object v4

    .line 38
    const-string v5, "onetrack_pa"

    .line 40
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v4, v5, v0}, Lcom/xiaomi/onetrack/api/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    .line 53
    if-eqz v0, :cond_3b

    .line 55
    const-string v0, "trackPageEndAuto"

    .line 57
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_3b
    const-string v0, ""

    .line 62
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->i(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_40} :catch_41

    .line 65
    goto :goto_4b

    .line 66
    :catch_41
    move-exception v0

    .line 67
    const-string v2, "trackPageEndAuto error:"

    .line 69
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    move-result-object v2

    .line 73
    invoke-static {v0, v2, v1}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 76
    :cond_4b
    :goto_4b
    return-void
.end method
