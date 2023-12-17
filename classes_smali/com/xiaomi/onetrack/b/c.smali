.class final Lcom/xiaomi/onetrack/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/c;->a:Lorg/json/JSONObject;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 1
    const-string v0, "AppConfigUpdater"

    .line 3
    const-string v1, "checkAppConfigVersion start"

    .line 5
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/xiaomi/onetrack/b/c;->a:Lorg/json/JSONObject;

    .line 10
    const-string v2, "config"

    .line 12
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_d9

    .line 18
    const/4 v2, 0x0

    .line 19
    move v3, v2

    .line 20
    :goto_13
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 23
    move-result v4

    .line 24
    if-ge v3, v4, :cond_d9

    .line 26
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 29
    move-result-object v4

    .line 30
    if-nez v4, :cond_22

    .line 32
    const-string v5, ""

    .line 34
    goto :goto_28

    .line 35
    :cond_22
    const-string v5, "appId"

    .line 37
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v5

    .line 41
    :goto_28
    new-instance v6, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string v7, "appId: "

    .line 48
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v6

    .line 58
    invoke-static {v0, v6}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    move-result v6

    .line 65
    if-nez v6, :cond_d5

    .line 67
    if-nez v4, :cond_46

    .line 69
    move v4, v2

    .line 70
    goto :goto_4c

    .line 71
    :cond_46
    const-string v6, "version"

    .line 73
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 76
    move-result v4

    .line 77
    :goto_4c
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v6, v5}, Lcom/xiaomi/onetrack/b/h;->e(Ljava/lang/String;)I

    .line 84
    move-result v6

    .line 85
    invoke-static {v5}, Lcom/xiaomi/onetrack/b/a;->c(Ljava/lang/String;)Z

    .line 88
    move-result v7

    .line 89
    invoke-static {}, Lcom/xiaomi/onetrack/b/a;->a()Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    move-result-object v8

    .line 93
    invoke-virtual {v8, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 96
    move-result v8

    .line 97
    if-eqz v8, :cond_74

    .line 99
    invoke-static {}, Lcom/xiaomi/onetrack/b/a;->a()Ljava/util/concurrent/ConcurrentHashMap;

    .line 102
    move-result-object v8

    .line 103
    invoke-virtual {v8, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    move-result-object v8

    .line 107
    check-cast v8, Ljava/lang/Boolean;

    .line 109
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 112
    move-result v8

    .line 113
    if-eqz v8, :cond_74

    .line 115
    const/4 v8, 0x1

    .line 116
    goto :goto_75

    .line 117
    :cond_74
    move v8, v2

    .line 118
    :goto_75
    const-string v9, "local version: "

    .line 120
    const-string v10, ", server version: "

    .line 122
    const-string v11, ", canUpdate: "

    .line 124
    invoke-static {v9, v6, v10, v4, v11}, La/a;->q(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    move-result-object v9

    .line 128
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 131
    const-string v10, ", isScheduling: "

    .line 133
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object v9

    .line 143
    invoke-static {v0, v9}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    if-lez v4, :cond_d5

    .line 148
    if-le v4, v6, :cond_d5

    .line 150
    if-eqz v7, :cond_d5

    .line 152
    if-nez v8, :cond_d5

    .line 154
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 157
    move-result-object v4

    .line 158
    iput v2, v4, Landroid/os/Message;->what:I

    .line 160
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 162
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 165
    move-result-wide v6

    .line 166
    const-wide v8, 0x413b774000000000L  # 1800000.0

    .line 171
    mul-double/2addr v6, v8

    .line 172
    double-to-long v6, v6

    .line 173
    new-instance v8, Ljava/lang/StringBuilder;

    .line 175
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    const-string v9, "the message will be handled after "

    .line 180
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 186
    const-string v9, " ms"

    .line 188
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object v8

    .line 195
    invoke-static {v0, v8}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/xiaomi/onetrack/b/a;->b()Lcom/xiaomi/onetrack/b/a$a;

    .line 201
    move-result-object v8

    .line 202
    invoke-virtual {v8, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 205
    invoke-static {}, Lcom/xiaomi/onetrack/b/a;->a()Ljava/util/concurrent/ConcurrentHashMap;

    .line 208
    move-result-object v4

    .line 209
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 211
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_d5
    add-int/lit8 v3, v3, 0x1

    .line 216
    goto/16 :goto_13

    .line 218
    :cond_d9
    return-void
.end method
