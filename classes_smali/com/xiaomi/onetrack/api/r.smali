.class Lcom/xiaomi/onetrack/api/r;
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
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/r;->b:Lcom/xiaomi/onetrack/api/h;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/r;->a:Ljava/util/Map;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/r;->a:Ljava/util/Map;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/r;->b:Lcom/xiaomi/onetrack/api/h;

    .line 10
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/r;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_21

    .line 29
    new-instance v2, Lorg/json/JSONObject;

    .line 31
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 34
    :cond_21
    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/r;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/r;->b:Lcom/xiaomi/onetrack/api/h;

    .line 40
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/r;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/k;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    .line 55
    goto :goto_43

    .line 56
    :catch_37
    move-exception v0

    .line 57
    const-string v1, " "

    .line 59
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    move-result-object v1

    .line 63
    const-string v2, "OneTrackImp"

    .line 65
    invoke-static {v0, v1, v2}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 68
    :goto_43
    return-void
.end method
