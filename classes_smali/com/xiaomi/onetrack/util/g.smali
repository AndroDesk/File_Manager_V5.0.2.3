.class Lcom/xiaomi/onetrack/util/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/xiaomi/onetrack/util/d;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/util/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/g;->d:Lcom/xiaomi/onetrack/util/d;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/util/g;->a:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/xiaomi/onetrack/util/g;->b:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/xiaomi/onetrack/util/g;->c:Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    const-string v0, "https://"

    .line 3
    :try_start_2
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/g;->a:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/g;->a:Ljava/lang/String;

    .line 14
    const-string v2, "http://"

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_c3

    .line 20
    const-string v2, "/api/open/device/writeBack"

    .line 22
    if-nez v1, :cond_35

    .line 24
    :try_start_17
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/g;->a:Ljava/lang/String;

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_20

    .line 32
    goto :goto_35

    .line 33
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/g;->a:Ljava/lang/String;

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    goto :goto_46

    .line 54
    :cond_35
    :goto_35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/g;->a:Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    :goto_46
    new-instance v1, Ljava/util/HashMap;

    .line 73
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 76
    const-string v2, "instanceId"

    .line 78
    invoke-static {}, Lcom/xiaomi/onetrack/util/o;->a()Lcom/xiaomi/onetrack/util/o;

    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3}, Lcom/xiaomi/onetrack/util/o;->b()Ljava/lang/String;

    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v2, "imei"

    .line 91
    iget-object v3, p0, Lcom/xiaomi/onetrack/util/g;->d:Lcom/xiaomi/onetrack/util/d;

    .line 93
    invoke-static {v3}, Lcom/xiaomi/onetrack/util/d;->a(Lcom/xiaomi/onetrack/util/d;)Landroid/content/Context;

    .line 96
    move-result-object v3

    .line 97
    invoke-static {v3}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v2, "oaid"

    .line 106
    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    .line 109
    move-result-object v3

    .line 110
    iget-object v4, p0, Lcom/xiaomi/onetrack/util/g;->d:Lcom/xiaomi/onetrack/util/d;

    .line 112
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/d;->a(Lcom/xiaomi/onetrack/util/d;)Landroid/content/Context;

    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v3, v4}, Lcom/xiaomi/onetrack/util/oaid/a;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v2, "projectId"

    .line 125
    iget-object v3, p0, Lcom/xiaomi/onetrack/util/g;->b:Ljava/lang/String;

    .line 127
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v2, "user"

    .line 132
    iget-object v3, p0, Lcom/xiaomi/onetrack/util/g;->c:Ljava/lang/String;

    .line 134
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const/4 v2, 0x0

    .line 138
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/g/b;->b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    .line 141
    move-result-object v0

    .line 142
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    move-result v1

    .line 146
    if-nez v1, :cond_a2

    .line 148
    const-string v1, ""

    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_9c

    .line 156
    goto :goto_a2

    .line 157
    :cond_9c
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/g;->d:Lcom/xiaomi/onetrack/util/d;

    .line 159
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/d;->c(Lcom/xiaomi/onetrack/util/d;Ljava/lang/String;)V

    .line 162
    goto :goto_cf

    .line 163
    :cond_a2
    :goto_a2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 166
    move-result-object v0

    .line 167
    const/16 v1, 0x64

    .line 169
    iput v1, v0, Landroid/os/Message;->what:I

    .line 171
    new-instance v1, Landroid/os/Bundle;

    .line 173
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 176
    const-string v2, "hint"

    .line 178
    const-string v3, "注册信息失败，请检查是网络环境是否在内网"

    .line 180
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 186
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/g;->d:Lcom/xiaomi/onetrack/util/d;

    .line 188
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/d;->b(Lcom/xiaomi/onetrack/util/d;)Landroid/os/Handler;

    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_c2} :catch_c3

    .line 195
    return-void

    .line 196
    :catch_c3
    move-exception v0

    .line 197
    invoke-static {}, Lcom/xiaomi/onetrack/util/d;->b()Ljava/lang/String;

    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 204
    move-result-object v0

    .line 205
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :goto_cf
    return-void
.end method
