.class Lcom/xiaomi/onetrack/api/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ad;->d:Lcom/xiaomi/onetrack/api/h;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/ad;->a:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/xiaomi/onetrack/api/ad;->b:Ljava/util/Map;

    .line 7
    iput-object p4, p0, Lcom/xiaomi/onetrack/api/ad;->c:Ljava/util/List;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 1
    const-string v0, "OneTrackImp"

    .line 3
    :try_start_2
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ad;->d:Lcom/xiaomi/onetrack/api/h;

    .line 5
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_29

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const-string v2, "adEventAppId is null,Please configure,event name:"

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ad;->a:Ljava/lang/String;

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void

    .line 42
    :cond_29
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ad;->d:Lcom/xiaomi/onetrack/api/h;

    .line 44
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ad;->a:Ljava/lang/String;

    .line 46
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)Z

    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_34

    .line 52
    return-void

    .line 53
    :cond_34
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ad;->b:Ljava/util/Map;

    .line 55
    const/4 v2, 0x1

    .line 56
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    .line 59
    move-result-object v4

    .line 60
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ad;->c:Ljava/util/List;

    .line 62
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/util/List;)Lorg/json/JSONArray;

    .line 65
    move-result-object v9

    .line 66
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ad;->d:Lcom/xiaomi/onetrack/api/h;

    .line 68
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ad;->a:Ljava/lang/String;

    .line 70
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/api/h;->b(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 73
    move-result-object v7

    .line 74
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/ad;->a:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ad;->d:Lcom/xiaomi/onetrack/api/h;

    .line 78
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    .line 81
    move-result-object v5

    .line 82
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ad;->d:Lcom/xiaomi/onetrack/api/h;

    .line 84
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->c(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    .line 87
    move-result-object v6

    .line 88
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ad;->d:Lcom/xiaomi/onetrack/api/h;

    .line 90
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->d(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/util/v;

    .line 93
    move-result-object v8

    .line 94
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ad;->d:Lcom/xiaomi/onetrack/api/h;

    .line 96
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->e(Lcom/xiaomi/onetrack/api/h;)Z

    .line 99
    move-result v10

    .line 100
    invoke-static/range {v3 .. v10}, Lcom/xiaomi/onetrack/api/c;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;Lorg/json/JSONArray;Z)Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ad;->d:Lcom/xiaomi/onetrack/api/h;

    .line 106
    invoke-static {v2}, Lcom/xiaomi/onetrack/api/h;->f(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;

    .line 109
    move-result-object v2

    .line 110
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/ad;->a:Ljava/lang/String;

    .line 112
    invoke-interface {v2, v3, v1}, Lcom/xiaomi/onetrack/api/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_72} :catch_73

    .line 115
    goto :goto_7d

    .line 116
    :catch_73
    move-exception v1

    .line 117
    const-string v2, "track map error: "

    .line 119
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    move-result-object v2

    .line 123
    invoke-static {v1, v2, v0}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 126
    :goto_7d
    return-void
.end method
