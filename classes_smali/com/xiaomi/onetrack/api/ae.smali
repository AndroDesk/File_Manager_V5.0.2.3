.class Lcom/xiaomi/onetrack/api/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ae;->b:Lcom/xiaomi/onetrack/api/h;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/ae;->a:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .line 1
    const-string v0, "B"

    .line 3
    const-string v1, "H"

    .line 5
    const-string v2, "OneTrackImp"

    .line 7
    :try_start_6
    new-instance v3, Lorg/json/JSONArray;

    .line 9
    iget-object v4, p0, Lcom/xiaomi/onetrack/api/ae;->a:Ljava/lang/String;

    .line 11
    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 14
    const/4 v4, 0x0

    .line 15
    :goto_e
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 18
    move-result v5

    .line 19
    if-ge v4, v5, :cond_88

    .line 21
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 24
    move-result-object v5

    .line 25
    if-eqz v5, :cond_76

    .line 27
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_76

    .line 33
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 36
    move-result v6

    .line 37
    if-nez v6, :cond_27

    .line 39
    goto :goto_76

    .line 40
    :cond_27
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 43
    move-result-object v6

    .line 44
    new-instance v14, Lcom/xiaomi/onetrack/api/d;

    .line 46
    invoke-direct {v14, v6}, Lcom/xiaomi/onetrack/api/d;-><init>(Lorg/json/JSONObject;)V

    .line 49
    iget-object v6, p0, Lcom/xiaomi/onetrack/api/ae;->b:Lcom/xiaomi/onetrack/api/h;

    .line 51
    invoke-virtual {v14}, Lcom/xiaomi/onetrack/api/d;->a()Ljava/lang/String;

    .line 54
    move-result-object v7

    .line 55
    invoke-static {v6, v7}, Lcom/xiaomi/onetrack/api/h;->c(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)Z

    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_3d

    .line 61
    goto :goto_7b

    .line 62
    :cond_3d
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 65
    move-result-object v8

    .line 66
    iget-object v5, p0, Lcom/xiaomi/onetrack/api/ae;->b:Lcom/xiaomi/onetrack/api/h;

    .line 68
    invoke-virtual {v14}, Lcom/xiaomi/onetrack/api/d;->a()Ljava/lang/String;

    .line 71
    move-result-object v6

    .line 72
    invoke-static {v5, v6}, Lcom/xiaomi/onetrack/api/h;->b(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 75
    move-result-object v11

    .line 76
    iget-object v5, p0, Lcom/xiaomi/onetrack/api/ae;->b:Lcom/xiaomi/onetrack/api/h;

    .line 78
    invoke-static {v5}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    .line 81
    move-result-object v9

    .line 82
    iget-object v5, p0, Lcom/xiaomi/onetrack/api/ae;->b:Lcom/xiaomi/onetrack/api/h;

    .line 84
    invoke-static {v5}, Lcom/xiaomi/onetrack/api/h;->c(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    .line 87
    move-result-object v10

    .line 88
    iget-object v5, p0, Lcom/xiaomi/onetrack/api/ae;->b:Lcom/xiaomi/onetrack/api/h;

    .line 90
    invoke-static {v5}, Lcom/xiaomi/onetrack/api/h;->d(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/util/v;

    .line 93
    move-result-object v12

    .line 94
    iget-object v5, p0, Lcom/xiaomi/onetrack/api/ae;->b:Lcom/xiaomi/onetrack/api/h;

    .line 96
    invoke-static {v5}, Lcom/xiaomi/onetrack/api/h;->e(Lcom/xiaomi/onetrack/api/h;)Z

    .line 99
    move-result v13

    .line 100
    move-object v7, v14

    .line 101
    invoke-static/range {v7 .. v13}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/api/d;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    .line 104
    move-result-object v5

    .line 105
    iget-object v6, p0, Lcom/xiaomi/onetrack/api/ae;->b:Lcom/xiaomi/onetrack/api/h;

    .line 107
    invoke-static {v6}, Lcom/xiaomi/onetrack/api/h;->f(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;

    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v14}, Lcom/xiaomi/onetrack/api/d;->a()Ljava/lang/String;

    .line 114
    move-result-object v7

    .line 115
    invoke-interface {v6, v7, v5}, Lcom/xiaomi/onetrack/api/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    goto :goto_7b

    .line 119
    :cond_76
    :goto_76
    const-string v5, "h5 json is empty or has no \"H\" or \"B\" "

    .line 121
    invoke-static {v2, v5}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_7b} :catch_7e

    .line 124
    :goto_7b
    add-int/lit8 v4, v4, 0x1

    .line 126
    goto :goto_e

    .line 127
    :catch_7e
    move-exception v0

    .line 128
    const-string v1, "trackEventFromH5 error: "

    .line 130
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    move-result-object v1

    .line 134
    invoke-static {v0, v1, v2}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 137
    :cond_88
    return-void
.end method
